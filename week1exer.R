  processFile = function(filepath) {
    con1 = file(filepath, "r")
    filenum = 0
    while (TRUE) {
      line = readLines(con1, n = 1)
      filenum = filenum + 1
      
      if (length(line) == 0) {
        break
      }
      
    }
    close(con1)
    
    filenum
  }
  
  
  calMaxLenLine = function(filepath) {
    con1 = file(filepath, "r")
    mmaxlenline = 0
    while (TRUE) {
      line = readLines(con1, n = 1)
      mmaxlenline = max(nchar(line), mmaxlenline)
      if (length(line) == 0) {
        break
      }
      
    }
    close(con1)
    mmaxlenline
  }
  
  calLoveHate = function(filepath) {
    numLove = 0
    numHate = 0
    print ("new1")
    con1 = file(filepath, "r")
    while (TRUE) {
      line = readLines(con1, n = 1, skipNul = TRUE)
      if (!is.null(line)) {
        bolLove = grepl("love", c(line))
        bolHate = grepl("hate", c(line))
        # bolLove
        # browser()
        #
        if (length(bolLove)>0) {
          if (bolLove == TRUE) {
            numLove = numLove + 1
          }
        }
        if (length(bolHate)>0) {
          if (bolHate == TRUE) {
            numHate = numHate + 1
          }
        }
        
      }
      
      if (length(line) == 0) {
        break
      }
      
    }
    close(con1)
    print("the number for love words divided by hate")
    print(numLove/ numHate)

    
  }
  
  calbiostats = function(filepath) {
    numbiostats = 0
    con1 = file(filepath, "r")
    while (TRUE) {
      line = readLines(con1, n = 1, skipNul = TRUE)
      if (!is.null(line)) {
        bolbiostats = grepl("biostats", c(line))
        # bolLove
        # browser()
        #
        if (length(bolbiostats)>0) {
          if (bolbiostats == TRUE) {
            print(line)
          }
        }
      }
      
      if (length(line) == 0) {
        break
      }
      
    }
    close(con1)
  }
  
  
  calComputer = function(filepath) {
    numcomp = 0
    con1 = file(filepath, "r")
    while (TRUE) {
      line = readLines(con1, n = 1, skipNul = TRUE)
      if (!is.null(line)) {
        bolnumcomp = grepl("A computer once beat me at chess, but it was no match for me at kickboxing", c(line))
        # bolLove
        # browser()
        #
        if (length(bolnumcomp)>0) {
          if (bolnumcomp == TRUE) {
            numcomp = numcomp + 1
          }
        }
      }
      
      if (length(line) == 0) {
        break
      }
      
    }
    close(con1)
    print(numcomp)
  }
  
  pathFile1 <-
    "D:\\kenfile\\datascience\\week1\\Coursera-SwiftKey\\final\\en_US\\en_US.blogs.txt"
  # file.info(pathFile1)
  # processFile(pathFile1)
  
  # quiz 1
  # 210160014
  
  # quiz 2
  pathFile2 <-
    "D:\\kenfile\\datascience\\week1\\Coursera-SwiftKey\\final\\en_US\\en_US.twitter.txt"
  # processFile(pathFile2)
  # 2360149
  
  # quiz 3
  pathFile3 <-
    "D:\\kenfile\\datascience\\week1\\Coursera-SwiftKey\\final\\en_US\\en_US.news.txt"
  # calMaxLenLine(pathFile1)
  # calMaxLenLine(pathFile2)
  # calMaxLenLine(pathFile3)
  # 40835 - en_US.blogs.txt
  # 213 - en_US.twitter.txt
  # 5760 - en_US.news.txt
  
  # quiz 4
  # calLoveHate(pathFile2)
  # 4.108592
  
  # quiz 5
  # calbiostats(pathFile2)
  # "i know how you feel.. i have biostats on tuesday and i have yet to study =/"
  
  # quiz 6
  # calComputer(pathFile2)
  #  3