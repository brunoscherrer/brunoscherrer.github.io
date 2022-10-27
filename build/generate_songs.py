#!/usr/bin/python

import sys
from all_songs import songs

sys.stderr.write("Génération du fichier songs.html")

count = 1

for (rep,titre),liste in songs:
    
    print("<tr> <td colspan=\"3\"> <b><center>--- "+titre+" ---</center></b></td></tr>")
    print()
    
    for (mp3,pdf,song) in liste:
        
        if count==1:
            deb ="<tr>	<td> <a class=\"song current-song\""
        else:
            deb = "<tr>	<td> <a class=\"song\""

        if mp3!="":
            f = "mp3/" + rep + "/" + mp3 + ".mp3"
            print( deb + "href=\"" + f +"\">" + str(count) + ". " + song + "</a>   </td>  <td> <a href=\"" + f + "\" download>mp3</a></td>  ")
        else:
            print("<tr>	<td class=\"nosong\"> " + str(count) + ". " + song + " </td>   <td> </td>")
            
        if pdf!="":
            print(" <td> &nbsp;&nbsp;  <a href=\"pdf/" + pdf + "_do.pdf\" target=\"_blank\">do</a> - <a href=\"pdf/" + pdf + "_sib.pdf\" target=\"_blank\">si♭</a> - <a href=\"pdf/" + pdf + "_mib.pdf\" target=\"_blank\">mi♭</a>  &nbsp;&nbsp;  <a href=\"midi/" + pdf + "_do.midi\" target=\"_blank\">midi</a> </td>  </tr>" )
        else:
            print(" <td> </td> </tr>")

        count += 1

        print()
    print()



