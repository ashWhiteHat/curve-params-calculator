from utils import fp_to_u64_limbs, print_limbs

# ed25519

# field prime order
p = 2**255 - 19

# edward d
numerator = 121665
denominator = 121666

# base point
x = 15112221349535400772501151409588531511454012693041857206046113283949847762202
y = 46316835694926478169428394003475163141307993866256225615783033603165251855960

def calculate_edward_d():
    modulus = fp_to_u64_limbs(p)
    x_limbs = fp_to_u64_limbs(x % p)
    y_limbs = fp_to_u64_limbs(y % p)

    raw_d = -(numerator * pow(denominator, p-2, p))
    d = fp_to_u64_limbs(raw_d % p)
    raw_t = x * y
    t = fp_to_u64_limbs(raw_t % p)

    print_limbs(f"EDWARDS_D", d)
    print_limbs(f"X", x_limbs)
    print_limbs(f"Y", y_limbs)
    print_limbs(f"T", t)

calculate_edward_d()
