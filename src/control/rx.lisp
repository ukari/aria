(in-package :cl-user)

(defpackage aria.control.rx
  (:use :cl)
  (:import-from :aria.control.rx.observable
                :observable
                :observablep)
  (:import-from :aria.control.rx.observer
                :observer
                :observerp)
  (:import-from :aria.control.rx.subject
                :subject
                :subjectp)
  (:import-from :aria.control.rx.subscriber
                :subscriber
                :subscriberp)
  (:export :observable
           :observablep)
  (:export :observer
           :observerp)
  (:export :subject
           :subjectp)
  (:export :subscriber
           :subscriberp)
  ;; subscribe
  (:use :aria.control.rx.util.subscribe)
  (:export :subscribe
           :unsubscribe
           :isunsubscribed)
  ;; tools
  (:use :aria.control.rx.util.operation)
  (:export :pipe
           :with-pipe
           :operation
           :combine)
  ;; help customize operators
  (:use :aria.control.rx.util.operator)
  (:export :operator
           :within-inner-subscriber
           :observable
           :observer
           :next
           :fail
           :over
           :onnext
           :onfail
           :onover
           :notifynext
           :notifyfail
           :notifyover
           :on-notifynext
           :on-notifyfail
           :on-notifyover
           :unsubscribe)
  ;; operators
  (:use :aria.control.rx.operators)
  ;; creation operators
  (:export :empty
           :from
           :of
           :range
           :start
           :thrown)
  ;; error-handling operators
  (:export :catcher
           :retry
           :retryuntil
           :retrywhen
           :retrywhile)
  ;; filtering operators
  (:export :distinct
           :debounce
           :filter
           :head
           :ignores
           :sample
           :single
           :skip
           :skipuntil
           :skipwhile
           :tail
           :take
           :takeuntil
           :takewhile
           :tap
           :tapfail
           :tapnext
           :tapover
           :throttle
           :throttletime)
  ;;transformation operators
  (:export :buffer
           :buffercount
           :concatmap
           :concatmapto
           :exhaustmap
           :expand
           :flatmap
           :groupby
           :mapper
           :mapto
           :reducer
           :scan
           :switchmap
           :window
           :windowcount))

(in-package :aria.control.rx)

(declaim (optimize (speed 0) (safety 3) (debug 3) (compilation-speed 0)))
