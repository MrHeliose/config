;;; treemacs-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "treemacs" "treemacs.el" (23072 13149 477603
;;;;;;  225000))
;;; Generated autoloads from treemacs.el

(autoload 'treemacs-toggle "treemacs" "\
If a treemacs buffer exists and is visible hide it.
If a treemacs buffer exists, but is not visible bring it to the foreground
and select it.
If no treemacs buffer exists call `treemacs'.

\(fn)" t nil)

(autoload 'treemacs "treemacs" "\
Open treemacs with current buffer's directory as root.
If the current buffer's `default-directory' is nil, use $HOME as fallback.
If a prefix argument ARG is given manually select the root directory.

\(fn &optional ARG)" t nil)

(autoload 'treemacs-bookmark "treemacs" "\
Find a bookmark in treemacs.
Only bookmarks marking either a file or a directory are offered for selection.
Treemacs will try to find and focus the given bookmark's location. If it cannot
do that it will instead rebuild its view with the bookmark's location as
its root.

With a prefix argument ARG treemacs will also open the bookmarked location.

\(fn &optional ARG)" t nil)

(autoload 'treemacs-refresh "treemacs" "\
Refresh and rebuild treemacs buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "treemacs-mode" "treemacs-mode.el" (23072 13149
;;;;;;  474269 813000))
;;; Generated autoloads from treemacs-mode.el

(autoload 'treemacs-mode "treemacs-mode" "\
A major mode for displaying the file system in a tree layout.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "treemacs-persist" "treemacs-persist.el" (23072
;;;;;;  13149 477603 225000))
;;; Generated autoloads from treemacs-persist.el

(autoload 'treemacs--restore "treemacs-persist" "\
Restore the entire treemacs state saved by `treeemacs--persist'.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil nil ("treemacs-async.el" "treemacs-branch-creation.el"
;;;;;;  "treemacs-compatibility.el" "treemacs-customization.el" "treemacs-faces.el"
;;;;;;  "treemacs-filewatch-mode.el" "treemacs-follow-mode.el" "treemacs-impl.el"
;;;;;;  "treemacs-interface.el" "treemacs-macros.el" "treemacs-mouse-interface.el"
;;;;;;  "treemacs-pkg.el" "treemacs-tag-follow-mode.el" "treemacs-tags.el"
;;;;;;  "treemacs-visuals.el") (23072 13149 504270 522000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; treemacs-autoloads.el ends here
