
(defun c:SCUFAV ()
    (setq OwdScufav (getstring "Entrez le nom du SCU favori : "))
	(setenv OWDSCUFAV OwdScuFav)
)

(defun c:SCUREST () 
	; TODO: Tester si OWDSCUFAV existe
    (command "_.ucs" "nom" "r" (getenv OWDSCUFAV))
    (setvar 'osmode 6655)
)

(defun c:SCUOB () 
    (command "_.ucs" "_ob")
    (setvar 'osmode 6655)
)

; TODO: ajouter fonction sur le OSMODE
; TODO: ajouter fonction sur le curseur
