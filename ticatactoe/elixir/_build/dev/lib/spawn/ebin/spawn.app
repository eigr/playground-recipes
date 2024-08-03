{application,spawn,
             [{compile_env,[{spawn,[load_blance_strategy],error},
                            {spawn,[pubsub_group],error}]},
              {applications,[kernel,stdlib,elixir,logger,retry,
                             opentelemetry_exporter,opentelemetry,decimal,
                             decorator,nebulex,shards,telemetry,castore,
                             protobuf,finch,tesla,k8s,k8s_webhoox,flow,vapor,
                             libcluster,horde,highlander,phoenix_pubsub,
                             phoenix_pubsub_nats,jason,nimble_parsec,sbroker,
                             telemetry_poller,telemetry_metrics,
                             telemetry_metrics_prometheus_core,
                             opentelemetry_api,pluggable]},
              {description,"Spawn is the core lib for Spawn Actors System"},
              {modules,['Elixir.Actors','Elixir.Actors.Actor.Entity',
                        'Elixir.Actors.Actor.Entity.EntityState',
                        'Elixir.Actors.Actor.Entity.Invocation',
                        'Elixir.Actors.Actor.Entity.Lifecycle',
                        'Elixir.Actors.Actor.Entity.Supervisor',
                        'Elixir.Actors.Actor.Interface',
                        'Elixir.Actors.Actor.Interface.Http',
                        'Elixir.Actors.Actor.InvocationScheduler',
                        'Elixir.Actors.Actor.Pool',
                        'Elixir.Actors.Actor.StateManager',
                        'Elixir.Actors.Actor.StateManager.Behaviour',
                        'Elixir.Actors.Config','Elixir.Actors.Config.Vapor',
                        'Elixir.Actors.Exceptions.NetworkPartitionException',
                        'Elixir.Actors.Exceptions.NotAuthorizedException',
                        'Elixir.Actors.K8s.K8sConn',
                        'Elixir.Actors.Node.Client',
                        'Elixir.Actors.Node.DefaultSplitBrainDetector',
                        'Elixir.Actors.Registry.ActorRegistry',
                        'Elixir.Actors.Registry.HostActor',
                        'Elixir.Actors.Registry.LoadBalance.Strategies.Random',
                        'Elixir.Actors.Registry.LoadBalance.Strategies.RoundRobin',
                        'Elixir.Actors.Registry.LoadBalance.Strategy',
                        'Elixir.Actors.Registry.LoadBalancer',
                        'Elixir.Actors.Security.Acl',
                        'Elixir.Actors.Security.Acl.DefaultAclManager',
                        'Elixir.Actors.Security.Acl.Policy',
                        'Elixir.Actors.Security.Acl.Rules.AclEvaluator',
                        'Elixir.Actors.Security.Tls.Initializer',
                        'Elixir.Actors.SplitBrainDetector',
                        'Elixir.Actors.Supervisors.ActorSupervisor',
                        'Elixir.Actors.Supervisors.ProtocolSupervisor',
                        'Elixir.Config.Name',
                        'Elixir.Eigr.Functions.Protocol.ActorInvocation',
                        'Elixir.Eigr.Functions.Protocol.ActorInvocationResponse',
                        'Elixir.Eigr.Functions.Protocol.Actors.Action',
                        'Elixir.Eigr.Functions.Protocol.Actors.Actor',
                        'Elixir.Eigr.Functions.Protocol.Actors.ActorDeactivationStrategy',
                        'Elixir.Eigr.Functions.Protocol.Actors.ActorId',
                        'Elixir.Eigr.Functions.Protocol.Actors.ActorSettings',
                        'Elixir.Eigr.Functions.Protocol.Actors.ActorSnapshotStrategy',
                        'Elixir.Eigr.Functions.Protocol.Actors.ActorState',
                        'Elixir.Eigr.Functions.Protocol.Actors.ActorState.TagsEntry',
                        'Elixir.Eigr.Functions.Protocol.Actors.ActorSystem',
                        'Elixir.Eigr.Functions.Protocol.Actors.FixedTimerAction',
                        'Elixir.Eigr.Functions.Protocol.Actors.Kind',
                        'Elixir.Eigr.Functions.Protocol.Actors.Metadata',
                        'Elixir.Eigr.Functions.Protocol.Actors.Metadata.TagsEntry',
                        'Elixir.Eigr.Functions.Protocol.Actors.Registry',
                        'Elixir.Eigr.Functions.Protocol.Actors.Registry.ActorsEntry',
                        'Elixir.Eigr.Functions.Protocol.Actors.TimeoutStrategy',
                        'Elixir.Eigr.Functions.Protocol.Broadcast',
                        'Elixir.Eigr.Functions.Protocol.Context',
                        'Elixir.Eigr.Functions.Protocol.Context.MetadataEntry',
                        'Elixir.Eigr.Functions.Protocol.Context.TagsEntry',
                        'Elixir.Eigr.Functions.Protocol.Forward',
                        'Elixir.Eigr.Functions.Protocol.InvocationRequest',
                        'Elixir.Eigr.Functions.Protocol.InvocationRequest.MetadataEntry',
                        'Elixir.Eigr.Functions.Protocol.InvocationResponse',
                        'Elixir.Eigr.Functions.Protocol.JSONType',
                        'Elixir.Eigr.Functions.Protocol.Noop',
                        'Elixir.Eigr.Functions.Protocol.Pipe',
                        'Elixir.Eigr.Functions.Protocol.ProxyInfo',
                        'Elixir.Eigr.Functions.Protocol.RegistrationRequest',
                        'Elixir.Eigr.Functions.Protocol.RegistrationResponse',
                        'Elixir.Eigr.Functions.Protocol.RequestStatus',
                        'Elixir.Eigr.Functions.Protocol.ServiceInfo',
                        'Elixir.Eigr.Functions.Protocol.SideEffect',
                        'Elixir.Eigr.Functions.Protocol.SpawnRequest',
                        'Elixir.Eigr.Functions.Protocol.SpawnResponse',
                        'Elixir.Eigr.Functions.Protocol.Status',
                        'Elixir.Eigr.Functions.Protocol.Workflow',
                        'Elixir.Google.Protobuf.Any',
                        'Elixir.Io.Cloudevents.V1.CloudEvent',
                        'Elixir.Io.Cloudevents.V1.CloudEvent.AttributesEntry',
                        'Elixir.Io.Cloudevents.V1.CloudEvent.CloudEventAttributeValue',
                        'Elixir.Sidecar','Elixir.Sidecar.GracefulShutdown',
                        'Elixir.Sidecar.GracefulShutdown.State',
                        'Elixir.Sidecar.Measurements',
                        'Elixir.Sidecar.MetricsSupervisor',
                        'Elixir.Sidecar.ProcessSupervisor',
                        'Elixir.Sidecar.Supervisor','Elixir.Spawn',
                        'Elixir.Spawn.Cache.LookupCache',
                        'Elixir.Spawn.Cache.LookupCache.Primary',
                        'Elixir.Spawn.Cluster.Node.Client',
                        'Elixir.Spawn.Cluster.Node.ConnectionSupervisor',
                        'Elixir.Spawn.Cluster.Node.Registry',
                        'Elixir.Spawn.Cluster.Node.Server',
                        'Elixir.Spawn.Cluster.Node.ServerSupervisor',
                        'Elixir.Spawn.Cluster.StateHandoff.ControllerBehaviour',
                        'Elixir.Spawn.Cluster.StateHandoff.Controllers.CrdtController',
                        'Elixir.Spawn.Cluster.StateHandoff.Controllers.PersistentController',
                        'Elixir.Spawn.Cluster.StateHandoff.Manager',
                        'Elixir.Spawn.Cluster.StateHandoff.Manager.State',
                        'Elixir.Spawn.Cluster.StateHandoff.ManagerSupervisor',
                        'Elixir.Spawn.Supervisor',
                        'Elixir.Spawn.Utils.AnySerializer',
                        'Elixir.Spawn.Utils.Common',
                        'Elixir.Spawn.Utils.Nats']},
              {registered,[]},
              {vsn,"1.0.0-rc.18"}]}.