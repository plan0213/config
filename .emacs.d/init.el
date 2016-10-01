(define-key global-map (kbd "C-z") 'undo)                 ; undo
(define-key global-map (kbd "C-o") 'comment-dwim)       ; コメントアウト
(define-key global-map (kbd "C-a") 'mark-whole-buffer) ; 全て選択

;;; メニューバーを消す
(menu-bar-mode -1)
;;; ;;; ツールバーを消す
(tool-bar-mode -1)
;;;
;;; ;;; 対応する括弧を光らせる。
(show-paren-mode 1)
;;; ;;; ウィンドウ内に収まらないときだけ括弧内も光らせる。
(setq show-paren-style 'mixed)
;;;
;;; ;;; カーソルの位置が何文字目かを表示する
(column-number-mode t)
;;;
;;; ;;; カーソルの位置が何行目かを表示する
(line-number-mode t)
;;;
;;; ;;; カーソルの場所を保存する
;;; (require 'saveplace)
(setq-default save-place t)
;;;
;;; ;;; バックアップファイルを作らない
(setq backup-inhibited t)
;;;
;;; ;;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)
;;;
;;; ;; カーソル点滅
(blink-cursor-mode -1)
;;;
;;; ;; line number
(custom-set-variables
'(global-linum-mode t))
;;;


;; load-path で ~/.emacs.d とか書かなくてよくなる
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;; el-get
(add-to-list 'load-path (locate-user-emacs-file "el-get"))
(require 'el-get)
;; el-getでダウンロードしたパッケージは ~/.emacs.d/ に入るようにする
(setq el-get-dir (locate-user-emacs-file ""))

(el-get 'sync 'flycheck)
(require 'python)

(defun tnoda/turn-on-flycheck-mode ()
  (flycheck-mode 1))
(add-hook 'python-mode-hook 'tnoda/turn-on-flycheck-mode)
