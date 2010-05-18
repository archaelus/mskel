{application, skel,
 [
  {description, ""},
  {vsn, "1"},
  {modules, [
             skel_app,
             skel_sup,
             skel_web
            ]},
  {registered, []},
  {applications, [
                  kernel,
                  stdlib
                 ]},
  {mod, { skel_app, []}},
  {env, [{listen, {127,0,0,1}}
         ,{port, 8123}
         ,{docroot, "priv/www"}]}
 ]}.
