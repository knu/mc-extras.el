;;; mc-extras.el --- Extra functions for multiple-cursors mode.

;; Copyright (c) 2013 Akinori MUSHA
;;
;; All rights reserved.
;;
;; Redistribution and use in source and binary forms, with or without
;; modification, are permitted provided that the following conditions
;; are met:
;; 1. Redistributions of source code must retain the above copyright
;;    notice, this list of conditions and the following disclaimer.
;; 2. Redistributions in binary form must reproduce the above copyright
;;    notice, this list of conditions and the following disclaimer in the
;;    documentation and/or other materials provided with the distribution.
;;
;; THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
;; ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;; IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;; ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
;; FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
;; DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
;; OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
;; HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
;; LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
;; OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
;; SUCH DAMAGE.

;; Author: Akinori MUSHA <knu@iDaemons.org>
;; URL: https://github.com/knu/mc-extras.el
;; Created: 4 Sep 2013
;; Version: 1.0.2.20130909
;; Package-Requires: ((multiple-cursors "1.2.1"))
;; Keywords: editing, cursors

;;; Commentary:
;;
;; This package contains extra functions for multiple-cursors mode.
;;
;; Here is a list of the interactive commands provided by mc-extras:
;;
;; * mc/compare-chars
;; * mc/compare-chars-backward
;; * mc/compare-chars-forward
;; * mc/cua-rectangle-to-multiple-cursors
;; * mc/remove-current-cursor
;; * mc/remove-duplicated-cursors
;;
;; Suggested key bindings are as follows:
;;
;;   (define-key mc/keymap (kbd "C-. C-d") 'mc/remove-current-cursor)
;;   (define-key mc/keymap (kbd "C-. d")   'mc/remove-duplicated-cursors)
;;
;;   (define-key mc/keymap (kbd "C-. =")   'mc/compare-chars)
;;
;;   (define-key cua--rectangle-keymap (kbd "C-. C-,") 'mc/cua-rectangle-to-multiple-cursors)

;;; Code:

(require 'multiple-cursors)

(require 'mc-compare)
(require 'mc-cua)
(require 'mc-remove)

(provide 'mc-extras)

;;; mc-extras.el ends here