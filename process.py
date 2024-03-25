import os
import sys
import argparse 

def chooseplatform():
    return sys.platform

# path to the current file
def PROCESS_PATH():
    return os.path.dirname(os.path.realpath(__file__))

PROCESS_PATH = PROCESS_PATH()

sys.path.append(PROCESS_PATH)
sys.path.append(os.path.join(PROCESS_PATH, 'imatools'))

try: 
    from imatools.common import vtktools as vtku 
    from imatools.common import itktools as itku
    from imatools.common import ioutils as iou

except ImportError as e:
    print("Error: ", e)

import numpy as np
import pandas as pd

def main(args):
    print(args)

if __name__ == '__main__':
    in_parser = argparse.ArgumentParser(description='SOME PROCESS.')
    in_parser.add_argument('-i', '--input', type=str, help='Input file.')
    in_parser.add_argument('-o', '--output', type=str, help='Output file.')

    args = in_parser.parse_args()
    main(args)


