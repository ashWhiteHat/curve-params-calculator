limbs_length = 4
limbs_bits = 64
u64_max = 2**64

def fp_to_u64_limbs(f):
    limbs = []
    for i in range(limbs_length):
        limbs.append(f % u64_max)
        f >>= limbs_bits
    return limbs

def print_limbs(m, limbs):
    print(f"const {m}: [u64; 4] = [")
    for limb in limbs:
        print(f"    0x{hex(limb)[2:].zfill(16)},")
    print("];\n")
