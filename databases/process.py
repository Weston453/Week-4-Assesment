log_file = open("um-server-01.txt")
# this first line opens the "um-server-01.txt" and saves it to a variable(log_file) for us to start manipulating it


def sales_reports(log_file):
# this line creates a function called sales_reports and calls the data file variable
    for line in log_file:
    # this line sets up a loop to go through each line of the data in the log_file variable
        line = line.rstrip('\n').split(",")
        # this line removes the unessisary line ending syntax from the data
        day = line[0:3]
        # this line creates a variable day and indexes its location in the line 
        if day == "Mon":
        # this line searches the index to see if the value = "Mon" 
            print(line)
            # if the value does = "Mon" then it prints/console.logs the data from that line 


sales_reports(log_file)
# this line runs the function 
