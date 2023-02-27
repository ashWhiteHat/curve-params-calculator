from utils import fp_to_u64_limbs, print_limbs

# ed25519

# field prime order
p = 2**255 - 19

# edward d
numerator = 121665
denominator = 121666

def calculate_edward_d():
    modulus = fp_to_u64_limbs(p)
    raw_d = -(numerator * pow(denominator, p-2, p))
    d = fp_to_u64_limbs(raw_d % p)
    print_limbs(f"EDWARD_D", d)

calculate_edward_d()
