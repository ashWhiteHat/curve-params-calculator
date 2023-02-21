# secp256k1

# field prime order
p = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2f

# field representation
limbs_length = 4
limbs_bits = 64
field_bits = 256
u64_max = 2**64
u256_max = 2**256
u512_max = 2**512
u768_max = 2**768
little_fermat = u64_max - 2

def calculate_field_params():
    print(hex(p))
    modulus = fp_to_u64_limbs(p)
    r = fp_to_u64_limbs(u256_max % p)
    r2 = fp_to_u64_limbs(u512_max % p)
    r3 = fp_to_u64_limbs(u768_max % p)
    q_inv = pow(p, -1, u64_max)
    inv = (-q_inv) % u64_max

    print_limbs("MODULUS", modulus)
    print_limbs("R", r)
    print_limbs("R2", r2)
    print_limbs("R3", r3)
    print("INV")
    print(hex(inv))

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
