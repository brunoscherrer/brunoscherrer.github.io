#!/usr/bin/python

import sys
from all_songs import songs,cinq_a_sept

for (songlist,head,fic,foot) in [ (songs,"header","index","foot"),(cinq_a_sept,"header7","index7","foot7") ]:

    sys.stderr.write("Génération du fichier "+fic+".html...\n")

    f=open(fic+".html","w")

    fh=open(head+".html","r")
    for line in fh:
        f.write(line)
    fh.close()    
    
    count = 1

    for (rep,titre),liste in songlist:

        f.write("<tr> <td colspan=\"3\"> <b><center>--- "+titre+" ---</center></b></td></tr>\n")

        for (mp3,pdf,song) in liste:

            if count==1:
                deb ="<tr>	<td> <a class=\"song current-song\""
            else:
                deb = "<tr>	<td> <a class=\"song\""

            if mp3!="":
                toto = "mp3/" + rep + "/" + mp3 + ".mp3"
                f.write( deb + "href=\"" + toto +"\">" + str(count) + ". " + song + "</a>   </td>  <td> <a href=\"" + toto + "\" download>mp3</a></td>  ")
            else:
                f.write("<tr>	<td class=\"nosong\"> " + str(count) + ". " + song + " </td>   <td> </td>")

            if pdf!="":
                f.write(" <td> &nbsp;&nbsp;  <a href=\"pdf/" + pdf + "_do.pdf\" target=\"_blank\">do</a> - <a href=\"pdf/" + pdf + "_sib.pdf\" target=\"_blank\">si♭</a> - <a href=\"pdf/" + pdf + "_mib.pdf\" target=\"_blank\">mi♭</a>  &nbsp;&nbsp;  <a href=\"midi/" + pdf + "_do.midi\" target=\"_blank\">midi</a> </td>  </tr>" )
            else:
                f.write(" <td> </td> </tr>")

            count += 1

            f.write("\n")
        f.write("\n")

    ff=open(foot+".html","r")
    for line in ff:
        f.write(line)
    ff.close()

    f.close()


