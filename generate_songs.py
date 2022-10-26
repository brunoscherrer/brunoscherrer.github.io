#!/usr/bin/python

import os,sys

songs = [ ( ("acoustic","Acoustique"), 
            [ ("01_agent000","agent000","Agent 000"),  
              ("02_balade","balade", "Balade"), 
              ("03_valse_pour_zelie","pour_zelie", "Valse pour Zélie"),
              ("04_kronembourgvirus","kronembourgvirus", "Kronembourg-Virus Valse"),
              ("05_la_demoiselle_de_montreal","pour_perrine","La demoiselle de Montréal (pour Perrine)"),
              ("06_marche","marche","Marche"),
              ("07_samba_calorea","samba_calorea","Samba Calor-é-a"),
              ("08_lemeilleurestavenir","lemeilleur","Le meilleur est à venir (pour Pascale)"),
              ("09_reverie","reverie","Rêverie (pour Gaëtan)"),
              ("10_larevanchedutriton","larevanchedutriton","La revanche du Triton"),
              ("11_volet","volet","Coucher de soleil (derrière un volet bloqué)"),
              ("12_bolero","bolero","Boléro-toto (pour Arnaud)"),
              ("13_bolero_jazz","bolero","Boléro-toto jazzy (pour Arnaud)"),
              ("14_risasdebolivia","risas","Risas de Bolivia / Trad. bolivien")
            ] ),
          ( ("synth","Synthé"),
            [ ("01_prog_to_log_2000","prog","Prog-to-log 2000"),
              ("02_pour_juliette","pour_juliette","Pour Juliette (Partie II / Partie I)"),
              ("03_samba_lek","samba_lek","Samba Lek'"),
              ("04_quettehou","quettehou","Quettehou Monchâton ? Saint-Vaast ?"),
              ("05_wuhan_connect","wuhan_connect","Wuhan connect"),
              ("06_disco","","Disco"),
              ("07_groove","","Groove"),
              ("08_turprendrasbiendlabonnesoupe","","Tu r'prendras bien de la bonne soupe ?"),
              ("09_soup_soup","","Soup' soup'"),
              ("10_wuhan_disconnect","","Wuhan disconnect"),
              ("11_7_4_repetitif","","7/4 répétitif"),
              ("12_bolerototo_newage","bolero","Boléro-toto New-Age-Olympique (pour Arnaud)"),
              ("13_apres_un_reve_faure","","Après un rêve (ma guitare ne roule pas les rrr) / Fauré")
              ] ),
          (  ("zeuhl","Zeuhl"),
             [ ("01_disco_tanz","","Disco Tanz"),
               ("02_pol_iss_pahr_tuh_just_iss_nuhl_pahr","","Pol Iss Pahr Tuh, Jüst Iss Nühl Pahr"),
               ("03_dimanche_mekanik","","Dimanche Mekanïk")
             ] ),
          ( ("brouillons","Brouillons"),
            [ ("12+2","","12+2"),
              ("c_est_pas_une_punition_han","punition","C'est pas une punition-han"),
              ("lalacestca","lalacestca","La la(ïcite), c'est ça !"),
              ("light_inside_the_body","light","Light inside the body"),
              ("nouveau_morceau","nouveau","Nouveau morceau"),
              ("rdv_cascade_pisse","cascade_pisse","Rendez-vous à la cascade de la pisse"),
              ("rencontre_du_3eme_type","3emetype","Rencontre du 3ème type (pour Bertrand)"),
              ("","samba","Samba ni chaussettes"),
              ("","joie_bonheur","Joie & bonheur"),
              ("","blues","Blues (de la majorité sexuelle au Vatican)"),
              ("","blues_confini","Le blues du con-fini"),
              ("","bras_casse","Bras cassé"),
              ("","cool_modul","Cool modulations"),
              ("","danse","Danse de (la fin de) l'abondance"),
              ("","ete_2001","Eté 2001"),
              ("","face","Dans ta F.A.C.E. !"),
              ("","frites","Double ration de frites (c'est ça la République !)"),
              ("","liquide","Liquide"),
              ("","mineur_majeur","Mineur/Majeur"),
              ("","naine_des_neiges","La naine des neiges"),
              ("","pour_manu","Pour Manu"),
              ("","satirieke","Satirieke"),
              ("","without_mi","Without mi"),
              ("","zarbi","Zarbi")
              #("","","Dans ta F.A.C.E. 2 !")
              ] ),
          ( ("reprises_jazz","Reprises de standards de Jazz"),
            [ ("01_triste","","Triste / Antonio Carlos Jobim"),
              ("02_memories_of_tomorrow","","Memories of Tomorrow / Keith Jarrett"),
              ("03_saint_thomas_54","saint_thomas5","Saint Thomas 5/4 / Sonny Rollins"),
              ("04_whisper_not","","Whisper not / Benny Golson")
              ] ),
          ( ("reprises","Reprises douteuses"),
            [ ("01_l_aventurier","","L'aventurier (perd son sang froid) / Indochine"),
              ("02_superstition","","(50 nuances de) Superstition / Stevie Wonder"),
              ("03_on_est_la","onestla","On est là (même si Macron ne veut pas) / Trad."),
              ("04_kenavo_les_bouseux","","Kenavo les bouseux / Trad. breton"),
              ("05_le_marche_turc","marche_turc","Le marché turc / Mozart - Raoul Petite"),
              ("06_mordor","","Mordor (Giorgio by Moroder) / Daft Punk"),
              ("07_i_wish_78","","I wish 7/8 / Stevie Wonder"),
              ("08_paradaija","","Paradaija / SESAM")
              ])
          ]
 

 


sys.stderr.write("Génération de la page HTML\n")

count = 1

pdflist = []

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
            if pdf not in pdflist:
                pdflist.append(pdf)
        else:
            print(" <td> </td> </tr>")

        count += 1

        print()
    print()


sys.stderr.write("Génération des partitions:\n")

for ton in ["do","sib","mib"]:
    txt="pdftk  "
    for pdf in pdflist:
        txt=txt+"pdf/" + pdf + "_" + ton + ".pdf "
    txt=txt+" cat output pdf/all_" + ton + ".pdf"
    sys.stderr.write(txt+"\n")
    os.system(txt)


