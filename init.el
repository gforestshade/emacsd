
;; --------------
;; package
;; --------------
(require 'package)

;; MELPAを追加
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Marmaladeを追加
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
;; Orgを追加
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; 初期化
(package-initialize)


;; --------------
;; language
;; --------------
;; set language as Japanese
(set-language-environment 'Japanese)
;; coding UTF8
(set-language-environment  'utf-8)
(prefer-coding-system 'utf-8)


;; --------------
;; history
;; --------------
;; 先にファイルを指定する
(setq savehist-file "~/.emacs.d/cache/history")

(savehist-mode t)
(setq savehist-additional-variables
      (append savehist-additional-variables
       '(compile-command
         command-history)))
(setq history-length 10000)


; --------------
; preferences
; --------------
;; 括弧を自動で補完する
(electric-pair-mode 1)
;; tabにスペース４つを利用
(setq-default tab-width 4 indent-tabs-mode nil)
;; デフォルトの起動時のメッセージを表示しない
(setq inhibit-startup-message t)
;; 列の番号
(column-number-mode t)
;; 行番号の表示
(global-linum-mode t)
;; 対応する括弧を光らせる
(show-paren-mode 1)
;; メニューバーの非表示
(menu-bar-mode -1)
;; ツールバーの非表示
(tool-bar-mode -1)
;; C-kで改行ごと消す
(setq kill-whole-line t)
;; ベル鳴らさずブリンクで
(setq visible-bell t)


;; (add-to-list 'default-frame-alist '(cursor-type . box))


; --------------
; color theme
; --------------
(load-theme 'dracula t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (dracula-theme solarized-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
