;
; This file is part of the Owidd AutoCAD Extras package.
;
; (c) Quentin Rossetti <quentin.rossetti@gmail.com>
;
; For the full copyright and license information, please view the LICENSE
; file that was distributed with this source code.
;

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
; TODO: ajouter fonction sur le PICKBOX
