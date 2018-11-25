(in-package :12forks)

(defun repo-name (repo)
  "Strips branch name from full repo name.
   For text like \"some/repo@master\" returns
   \"some/repo\"."
  (subseq repo
          0
          (position #\@ repo)))


(defun repo-author (repo)
  "For 'svetlyak40wt/foo@bar' string returns 'svetlyak40wt'"
  (subseq repo 0 (position #\/ repo)))


(defun last-character (string)
  (aref string (1- (length string))))


(defun beautify-sentence (sentence)
  "Normalizes piece of text by capitalizing first character and adding dot at the end if needed."
  (let* ((length (length sentence))
         (last-char (last-character sentence))
         (capitalized (string-capitalize sentence :end (min 1 length))))
    (if (alphanumericp last-char)
        ;; add a dot
        (concatenate 'string capitalized ".")
        capitalized)))


(defun merge-commit-p (commit)
  "If messages is looks like a merge commit, then.
   We consider merge commit if it has more than one parent"
  (> (length (getf commit :|parents|))
     1))


(defun repo-branch (repo)
  "For 'svetlyak40wt/foo@bar' string returns 'bar'.
   If there is no @ suffix, assume 'master' is default branch."
  (let ((position (position #\@ repo)))
    (if position
        (subseq repo (1+ position))
        "master")))



(defun strip (text)
  "Removes spaces and newlines from both ends of the string"
  (string-trim '(#\Space #\Newline) text))


(defun split-header (text)
  "Separates first line from the rest and
returns a list of two items. First line should be separated
from the rest with at least one empty line."
  (let ((pos (position #\Newline text)))
    (if pos
        (list (strip (subseq text 0 pos))
              (strip (subseq text (1+ pos))))
        (list (strip text) ""))))


(defun make-underline (char header)
  "Makes from given char a string of same length as text 'header'"
  (make-string (length header) :initial-element char))



(defun find-branch-by-name (branches name)
  "Searches in the list of full names like:

      '(\"12forks/core@master\"
        \"12forks/core@gh-pages\")

   branch by it's short name.

   For example, if name i \"gh-pages\", then
   function will return \"12forks/core@gh-pages\".

   If nothing found then nil is returned."
  (find-if (lambda (item)
             (equal (repo-branch item)
                name))
           branches))

(defun get-next-link (header)
  "Extracts a link to the next page from GitHub's \"link\" header.

Usually, link header contains something like this:

<https://api.github.com/repositories/11654191/forks?page=2>; rel=\"next\", <https://api.github.com/repositories/11654191/forks?page=2>; rel=\"last\"
"

  (cl-ppcre:register-groups-bind (url) ("<(.*?)>; rel=\"next\"" header)
                                 url))
