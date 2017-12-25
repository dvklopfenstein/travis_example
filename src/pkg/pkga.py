"""Package A."""

import sys


class ClassA(object):
    """ClassA."""

    def prt(self, prt=sys.stdout):
        """Print class."""
        prt.write("ClassA\n")
