;;;; -*- Mode: LISP; Syntax: ANSI-Common-Lisp; Base: 10 -*-
;;;; *************************************************************************
;;;; FILE IDENTIFICATION
;;;;
;;;; Name:          clsql-postgresql.asd
;;;; Purpose:       ASDF file for CLSQL PostgresSQL socket backend
;;;; Programmer:    Kevin M. Rosenberg
;;;; Date Started:  Aug 2002
;;;;
;;;; $Id: clsql-postgresql-socket.asd,v 1.1 2002/08/18 02:57:50 kevin Exp $
;;;;
;;;; This file, part of CLSQL, is Copyright (c) 2002 by Kevin M. Rosenberg
;;;;
;;;; CLSQL users are granted the rights to distribute and use this software
;;;; as governed by the terms of the Lisp Lesser GNU Public License
;;;; (http://opensource.franz.com/preamble.html), also known as the LLGPL.
;;;; *************************************************************************

(declaim (optimize (debug 3) (speed 3) (safety 1) (compilation-speed 0)))
(in-package :asdf)

;;; System definition

(defsystem clsql-postgresql-socket
    :default-component-class clsql-cl-source-file
    :pathname "cl-library:clsql-postgresql-socket;"
    :components ((:file "postgresql-socket-package")
		 (:file "postgresql-socket-api"
			:depends-on ("postgresql-socket-package"))
		 (:file "postgresql-socket-sql"
			:depends-on ("postgresql-socket-api")))
    :depends-on (:clsql-base :uffi))
