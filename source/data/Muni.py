import csv
class tsvClass:
    muni = []

    def __init__(self) -> None:
        self.getNames()

    def getNames(self):
        with open("source/data/denmark.tsv", "r") as f:
            reader = csv.reader(f)
            for row in reader:
                self.muni.append(row)
        self.muni.sort()
    def printList(self):
        print(self.muni)