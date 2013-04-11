class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'

    def __init__(self):
	   self.defaultErrorMsg = "Error"

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
        #tabs = n*"\t"
        printstr = self.OKGREEN + "Passed \t| " + s + "\t" #+ tabs
        for stat in stats:
            printstr += str(stat) + "\t"
        printstr += self.ENDC
        print printstr

    def printFail(self, s, errorMsg):
	   print self.FAIL + "Failed \t|\t " + s + "\t" + errorMsg + self.ENDC

    def printError(self, errorMsg):
       print self.FAIL + errorMsg + self.ENDC