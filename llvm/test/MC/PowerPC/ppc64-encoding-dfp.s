# RUN: llvm-mc -triple powerpc64-unknown-unknown --show-encoding %s | FileCheck -check-prefix=CHECK-BE %s
# RUN: llvm-mc -triple powerpc64le-unknown-unknown --show-encoding %s | FileCheck -check-prefix=CHECK-LE %s


# CHECK-BE: dadd 2, 3, 4                   # encoding: [0xec,0x43,0x20,0x04]
# CHECK-LE: dadd 2, 3, 4                   # encoding: [0x04,0x20,0x43,0xec]
            dadd 2, 3, 4
# CHECK-BE: dadd. 2, 3, 4                  # encoding: [0xec,0x43,0x20,0x05]
# CHECK-LE: dadd. 2, 3, 4                  # encoding: [0x05,0x20,0x43,0xec]
            dadd. 2, 3, 4
# CHECK-BE: daddq 2, 6, 4                  # encoding: [0xfc,0x46,0x20,0x04]
# CHECK-LE: daddq 2, 6, 4                  # encoding: [0x04,0x20,0x46,0xfc]
            daddq 2, 6, 4
# CHECK-BE: daddq. 2, 6, 4                 # encoding: [0xfc,0x46,0x20,0x05]
# CHECK-LE: daddq. 2, 6, 4                 # encoding: [0x05,0x20,0x46,0xfc]
            daddq. 2, 6, 4
# CHECK-BE: dsub 2, 3, 4                   # encoding: [0xec,0x43,0x24,0x04]
# CHECK-LE: dsub 2, 3, 4                   # encoding: [0x04,0x24,0x43,0xec]
            dsub 2, 3, 4
# CHECK-BE: dsub. 2, 3, 4                  # encoding: [0xec,0x43,0x24,0x05]
# CHECK-LE: dsub. 2, 3, 4                  # encoding: [0x05,0x24,0x43,0xec]
            dsub. 2, 3, 4
# CHECK-BE: dsubq 2, 6, 4                  # encoding: [0xfc,0x46,0x24,0x04]
# CHECK-LE: dsubq 2, 6, 4                  # encoding: [0x04,0x24,0x46,0xfc]
            dsubq 2, 6, 4
# CHECK-BE: dsubq. 2, 6, 4                 # encoding: [0xfc,0x46,0x24,0x05]
# CHECK-LE: dsubq. 2, 6, 4                 # encoding: [0x05,0x24,0x46,0xfc]
            dsubq. 2, 6, 4
# CHECK-BE: dmul 2, 3, 4                   # encoding: [0xec,0x43,0x20,0x44]
# CHECK-LE: dmul 2, 3, 4                   # encoding: [0x44,0x20,0x43,0xec]
            dmul 2, 3, 4
# CHECK-BE: dmul. 2, 3, 4                  # encoding: [0xec,0x43,0x20,0x45]
# CHECK-LE: dmul. 2, 3, 4                  # encoding: [0x45,0x20,0x43,0xec]
            dmul. 2, 3, 4
# CHECK-BE: dmulq 2, 6, 4                  # encoding: [0xfc,0x46,0x20,0x44]
# CHECK-LE: dmulq 2, 6, 4                  # encoding: [0x44,0x20,0x46,0xfc]
            dmulq 2, 6, 4
# CHECK-BE: dmulq. 2, 6, 4                 # encoding: [0xfc,0x46,0x20,0x45]
# CHECK-LE: dmulq. 2, 6, 4                 # encoding: [0x45,0x20,0x46,0xfc]
            dmulq. 2, 6, 4
# CHECK-BE: ddiv 2, 3, 4                   # encoding: [0xec,0x43,0x24,0x44]
# CHECK-LE: ddiv 2, 3, 4                   # encoding: [0x44,0x24,0x43,0xec]
            ddiv 2, 3, 4
# CHECK-BE: ddiv. 2, 3, 4                  # encoding: [0xec,0x43,0x24,0x45]
# CHECK-LE: ddiv. 2, 3, 4                  # encoding: [0x45,0x24,0x43,0xec]
            ddiv. 2, 3, 4
# CHECK-BE: ddivq 2, 6, 4                  # encoding: [0xfc,0x46,0x24,0x44]
# CHECK-LE: ddivq 2, 6, 4                  # encoding: [0x44,0x24,0x46,0xfc]
            ddivq 2, 6, 4
# CHECK-BE: ddivq. 2, 6, 4                 # encoding: [0xfc,0x46,0x24,0x45]
# CHECK-LE: ddivq. 2, 6, 4                 # encoding: [0x45,0x24,0x46,0xfc]
            ddivq. 2, 6, 4
