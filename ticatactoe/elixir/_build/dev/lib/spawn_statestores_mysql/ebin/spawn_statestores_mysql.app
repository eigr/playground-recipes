{application,spawn_statestores_mysql,
             [{applications,[kernel,stdlib,elixir,logger,vapor,cloak_ecto,
                             ecto_sql,myxql,spawn_statestores]},
              {description,"Spawn Statestores Mysql is a storage lib for the Spawn Actors System"},
              {modules,['Elixir.Statestores.Adapters.MySQLLookupAdapter',
                        'Elixir.Statestores.Adapters.MySQLSnapshotAdapter']},
              {registered,[]},
              {vsn,"1.0.0-rc.18"}]}.
