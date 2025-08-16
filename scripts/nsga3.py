import numpy as np
from pymoo.core.problem import ElementwiseProblem
from pymoo.util.ref_dirs import get_reference_directions
from pymoo.algorithms.moo.nsga3 import NSGA3
from pymoo.termination import get_termination
from pymoo.optimize import minimize
import pandas as pd

# Import your evaluation function
from mult_180 import evaluate_config_180  # must return (ssim, area, power, delay)

# Define the optimization problem
class GaborBitwidthProblem(ElementwiseProblem):
    def __init__(self):
        super().__init__(
            n_var=13,
            n_obj=4,
            n_constr=1,
            xl=np.full(13, 2),
            xu=np.full(13, 8),
            type_var=int
        )

    def _evaluate(self, x, out, *args, **kwargs):
        config = [int(val) for val in x]
        print(f"Evaluating config: {config}")

        ssim, area, power, delay = evaluate_config_180(config)
        print(f"→ SSIM: {ssim:.6f}")

        # Objectives to minimize: area, power, delay, and negative SSIM
        out["F"] = [area, power, delay, -ssim]
        out["G"] = [0.8 - ssim]  # Constraint: ssim >= 0.8

# Main optimization loop
if __name__ == "__main__":
    problem = GaborBitwidthProblem()

    # NSGA-III needs a reference direction set
    ref_dirs = get_reference_directions("das-dennis", 4, n_partitions=12)  # 4-objective

    algorithm = NSGA3(
        pop_size=30,
        ref_dirs=ref_dirs
    )

    termination = get_termination("n_gen", 14)

    res = minimize(
        problem,
        algorithm,
        termination,
        seed=1,
        save_history=True,
        verbose=True
    )

    # Print final Pareto-optimal solutions
    print("\n Optimization complete! Pareto-optimal configurations:")
    configs = []
    for config, obj in zip(res.X, res.F):
        cfg = list(map(int, config))
        area, power, delay, neg_ssim = obj
        ssim = -neg_ssim
        print(f"Config: {cfg}")
        print(f" → Area={area:.1f}, Power={power:.6f}, Delay={delay:.4f}, SSIM@180={ssim:.6f}\n")
        configs.append([*cfg, area, power, delay, ssim])

    # Save to CSV
    df = pd.DataFrame(configs, columns=[f"b{i+1}" for i in range(13)] + ["Area", "Power", "Delay", "SSIM@90"])
    df.to_csv("nsga3_pareto_results_180.csv", index=False)
    print("✅ Results saved to nsga3_pareto_results_180.csv")
