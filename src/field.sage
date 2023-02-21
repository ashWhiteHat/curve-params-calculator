# secp256k1

# field prime order
p = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2f

# field representation
limbs_length = 4
limbs_bits = 64
field_bits = 256
u64_max = 2**64

def calculate_field_params():
    print(hex(p))
    limbs = fp_to_u64_limbs(p)
    print_limbs("MODULUS", limbs)

def fp_to_u64_limbs(f):
    limbs = []
    for i in range(limbs_length):
        limbs.append(f % u64_max)
        f >>= limbs_bits
    return limbs

def print_limbs(m, limbs):
    print(m)
    for limb in limbs:
        print(hex(limb))

calculate_field_params()
