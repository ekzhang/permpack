"""
Exact bound of ~0.1234567902 on N=6.
"""

from permpack.all import *

p = PermProblem(6, density_pattern="215634")
p.solve_sdp(solver="csdp")
p.exactify(rounding_precision=10^10, recognition_precision=6)
p.write_certificate("cert215634.js")
