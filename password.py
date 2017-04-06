import random
import string 
import sys


totalLength = int(sys.argv[1]) if len(sys.argv) > 1 else 32


if len(sys.argv) > 2:
     usePunctuation = sys.argv[2]
else:
     usePunctuation = ''

if usePunctuation == 'true' or usePunctuation == '1':
     print ''.join(random.SystemRandom().choice(string.hexdigits + "~!@#$%^&*()_+-=") for _ in range(totalLength))
else:
     print ''.join(random.SystemRandom().choice(string.hexdigits) for _ in range(totalLength))

