#!/usr/bin/python3


import os

from all_songs import songs,repete



for (filename,source) in [("all",songs), ("repete",repete)]:

    pdflist = []
    songlist = []
    
    for (rep,titre),liste in source:

        for (mp3,pdf,song) in liste:

            if pdf!="":
                if pdf not in pdflist:
                    pdflist.append(pdf)
                    songlist.append(song)

    pdflist = [x for _, x in sorted(zip(songlist, pdflist))]


    print("Génération des intégrales des partitions pour",filename)

    for ton in ["do","sib","mib"]:
        txt="pdftk  "
        for pdf in pdflist:
            txt=txt+"../pdf/" + pdf + "_" + ton + ".pdf "
        txt=txt+" cat output ../pdf/" + filename + "_" + ton + ".pdf"
        print(txt+"\n")
        os.system(txt)
