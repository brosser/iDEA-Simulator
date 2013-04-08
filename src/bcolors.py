class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    Classname = ""

    def __init__(self, classname):
	self.Classname = classname

    def disable(self):
        self.HEADER = ''
        self.OKBLUE = ''
        self.OKGREEN = ''
        self.WARNING = ''
        self.FAIL = ''
        self.ENDC = ''

    def printPass(self, s, stats):
        n = 1
        i = 40
        while i > 4:
            if (len(s) < i):
                n += 1
            i -= 8
        tabs = n*"\t"
        print self.OKGREEN + "Passed \t|\t " + s + tabs + stats + self.ENDC

    def printFail(self, s, errorMsg):
	   print self.FAIL + "Failed \t|\t " + s + "\t" + errorMsg + self.ENDC
