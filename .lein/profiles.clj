;;{:user {:plugins [[cider/cider-nrepl "0.21.1"]]}}

{:user
 {:dependencies  [[nrepl  "0.6.0"]
                  [iced-nrepl  "0.4.1"]
                  [cider/cider-nrepl  "0.21.1"]
                  [cljfmt "0.5.1"]
                  [vvvvalvalval/scope-capture  "0.3.2"]]
  :repl-options  {:nrepl-middleware  [cider.nrepl/wrap-classpath
                                      cider.nrepl/wrap-complete
                                      cider.nrepl/wrap-debug
                                      cider.nrepl/wrap-format
                                      cider.nrepl/wrap-info
                                      cider.nrepl/wrap-macroexpand
                                      cider.nrepl/wrap-ns
                                      cider.nrepl/wrap-out
                                      cider.nrepl/wrap-spec
                                      cider.nrepl/wrap-test
                                      cider.nrepl/wrap-trace
                                      cider.nrepl/wrap-undef
                                      iced.nrepl/wrap-iced]}
  :injections [(require 'sc.api)]
  :plugins  [[refactor-nrepl  "2.4.0"]
             [venantius/ultra  "0.6.0"]
             [lein-localrepo "0.5.4"]]}}
