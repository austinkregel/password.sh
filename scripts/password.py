import random
import string 
import sys


totalLength = int(sys.argv[1]) if len(sys.argv) > 1 else 32


print(''.join(random.SystemRandom().choice(string.ascii_lowercase + string.ascii_uppercase + string.digits + string.string.punctuation) for _ in range(totalLength)))

