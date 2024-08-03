{application,k8s,
             [{applications,[kernel,stdlib,elixir,logger,castore,yaml_elixir,
                             jason,mint,mint_web_socket,poolboy,telemetry]},
              {description,"Kubernetes API Client for Elixir"},
              {modules,['Elixir.Inspect.K8s.Conn.Auth.AuthProvider',
                        'Elixir.Inspect.K8s.Conn.Auth.Certificate',
                        'Elixir.Inspect.K8s.Conn.Auth.Token',
                        'Elixir.Jason.Encoder.K8s.Operation','Elixir.K8s',
                        'Elixir.K8s.Application','Elixir.K8s.Client',
                        'Elixir.K8s.Client.APIError',
                        'Elixir.K8s.Client.DynamicHTTPProvider',
                        'Elixir.K8s.Client.HTTPError',
                        'Elixir.K8s.Client.HTTPStream',
                        'Elixir.K8s.Client.HTTPTestHelper',
                        'Elixir.K8s.Client.Mint.ConnectionRegistry',
                        'Elixir.K8s.Client.Mint.HTTPAdapter',
                        'Elixir.K8s.Client.Mint.Request',
                        'Elixir.K8s.Client.MintHTTPProvider',
                        'Elixir.K8s.Client.Provider',
                        'Elixir.K8s.Client.Runner.Async',
                        'Elixir.K8s.Client.Runner.Base',
                        'Elixir.K8s.Client.Runner.Stream',
                        'Elixir.K8s.Client.Runner.Stream.ListRequest',
                        'Elixir.K8s.Client.Runner.Stream.Watch',
                        'Elixir.K8s.Client.Runner.StreamTo',
                        'Elixir.K8s.Client.Runner.Wait','Elixir.K8s.Conn',
                        'Elixir.K8s.Conn.Auth',
                        'Elixir.K8s.Conn.Auth.AuthProvider',
                        'Elixir.K8s.Conn.Auth.Azure',
                        'Elixir.K8s.Conn.Auth.BasicAuth',
                        'Elixir.K8s.Conn.Auth.Certificate',
                        'Elixir.K8s.Conn.Auth.DigitalOcean',
                        'Elixir.K8s.Conn.Auth.Exec',
                        'Elixir.K8s.Conn.Auth.Token','Elixir.K8s.Conn.Error',
                        'Elixir.K8s.Conn.PKI',
                        'Elixir.K8s.Conn.RequestOptions',
                        'Elixir.K8s.Conn.RequestOptions.Any',
                        'Elixir.K8s.Conn.RequestOptions.K8s.Conn',
                        'Elixir.K8s.Conn.RequestOptions.K8s.Conn.Auth.AuthProvider',
                        'Elixir.K8s.Conn.RequestOptions.K8s.Conn.Auth.Azure',
                        'Elixir.K8s.Conn.RequestOptions.K8s.Conn.Auth.BasicAuth',
                        'Elixir.K8s.Conn.RequestOptions.K8s.Conn.Auth.Certificate',
                        'Elixir.K8s.Conn.RequestOptions.K8s.Conn.Auth.Exec',
                        'Elixir.K8s.Conn.RequestOptions.K8s.Conn.Auth.Token',
                        'Elixir.K8s.Conn.RequestOptions.Map',
                        'Elixir.K8s.Discovery','Elixir.K8s.Discovery.Driver',
                        'Elixir.K8s.Discovery.Driver.File',
                        'Elixir.K8s.Discovery.Driver.HTTP',
                        'Elixir.K8s.Discovery.Error',
                        'Elixir.K8s.Discovery.ResourceFinder',
                        'Elixir.K8s.Discovery.ResourceNaming',
                        'Elixir.K8s.Middleware','Elixir.K8s.Middleware.Error',
                        'Elixir.K8s.Middleware.Request',
                        'Elixir.K8s.Middleware.Request.EncodeBody',
                        'Elixir.K8s.Middleware.Request.Initialize',
                        'Elixir.K8s.Middleware.Stack','Elixir.K8s.Operation',
                        'Elixir.K8s.Operation.Error',
                        'Elixir.K8s.Operation.Path','Elixir.K8s.Resource',
                        'Elixir.K8s.Resource.FieldAccessors',
                        'Elixir.K8s.Resource.NamedList',
                        'Elixir.K8s.Resource.Utilization',
                        'Elixir.K8s.Selector','Elixir.K8s.Sys.Event',
                        'Elixir.K8s.Sys.Logger','Elixir.K8s.Sys.Telemetry',
                        'Elixir.K8s.Version']},
              {registered,[]},
              {vsn,"2.4.0"},
              {mod,{'Elixir.K8s.Application',[]}}]}.