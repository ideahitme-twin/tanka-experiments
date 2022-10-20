{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='watchEvent', url='', help='"Event represents a single event to a watched resource."'),
  '#new':: d.fn(help='new returns an instance of WatchEvent', args=[d.arg(name='name', type=d.T.string)]),
  new(name): {
    apiVersion: 'storage.k8s.io/v1beta1',
    kind: 'WatchEvent',
  } + self.metadata.withName(name=name),
  '#withObject':: d.fn(help="\"RawExtension is used to hold extensions in external versions.\\n\\nTo use this, make a field which has RawExtension as its type in your external, versioned struct, and Object in your internal struct. You also need to register your various plugin types.\\n\\n// Internal package: type MyAPIObject struct {\\n\\truntime.TypeMeta `json:\\\",inline\\\"`\\n\\tMyPlugin runtime.Object `json:\\\"myPlugin\\\"`\\n} type PluginA struct {\\n\\tAOption string `json:\\\"aOption\\\"`\\n}\\n\\n// External package: type MyAPIObject struct {\\n\\truntime.TypeMeta `json:\\\",inline\\\"`\\n\\tMyPlugin runtime.RawExtension `json:\\\"myPlugin\\\"`\\n} type PluginA struct {\\n\\tAOption string `json:\\\"aOption\\\"`\\n}\\n\\n// On the wire, the JSON will look something like this: {\\n\\t\\\"kind\\\":\\\"MyAPIObject\\\",\\n\\t\\\"apiVersion\\\":\\\"v1\\\",\\n\\t\\\"myPlugin\\\": {\\n\\t\\t\\\"kind\\\":\\\"PluginA\\\",\\n\\t\\t\\\"aOption\\\":\\\"foo\\\",\\n\\t},\\n}\\n\\nSo what happens? Decode first uses json or yaml to unmarshal the serialized data into your external MyAPIObject. That causes the raw JSON to be stored, but not unpacked. The next step is to copy (using pkg/conversion) into the internal struct. The runtime package's DefaultScheme has conversion functions installed which will unpack the JSON stored in RawExtension, turning it into the correct object type, and storing it in the Object. (TODO: In the case where the object is of an unknown type, a runtime.Unknown object will be created and stored.)\"", args=[d.arg(name='object', type=d.T.object)]),
  withObject(object): { object: object },
  '#withObjectMixin':: d.fn(help="\"RawExtension is used to hold extensions in external versions.\\n\\nTo use this, make a field which has RawExtension as its type in your external, versioned struct, and Object in your internal struct. You also need to register your various plugin types.\\n\\n// Internal package: type MyAPIObject struct {\\n\\truntime.TypeMeta `json:\\\",inline\\\"`\\n\\tMyPlugin runtime.Object `json:\\\"myPlugin\\\"`\\n} type PluginA struct {\\n\\tAOption string `json:\\\"aOption\\\"`\\n}\\n\\n// External package: type MyAPIObject struct {\\n\\truntime.TypeMeta `json:\\\",inline\\\"`\\n\\tMyPlugin runtime.RawExtension `json:\\\"myPlugin\\\"`\\n} type PluginA struct {\\n\\tAOption string `json:\\\"aOption\\\"`\\n}\\n\\n// On the wire, the JSON will look something like this: {\\n\\t\\\"kind\\\":\\\"MyAPIObject\\\",\\n\\t\\\"apiVersion\\\":\\\"v1\\\",\\n\\t\\\"myPlugin\\\": {\\n\\t\\t\\\"kind\\\":\\\"PluginA\\\",\\n\\t\\t\\\"aOption\\\":\\\"foo\\\",\\n\\t},\\n}\\n\\nSo what happens? Decode first uses json or yaml to unmarshal the serialized data into your external MyAPIObject. That causes the raw JSON to be stored, but not unpacked. The next step is to copy (using pkg/conversion) into the internal struct. The runtime package's DefaultScheme has conversion functions installed which will unpack the JSON stored in RawExtension, turning it into the correct object type, and storing it in the Object. (TODO: In the case where the object is of an unknown type, a runtime.Unknown object will be created and stored.)\"\n\n**Note:** This function appends passed data to existing values", args=[d.arg(name='object', type=d.T.object)]),
  withObjectMixin(object): { object+: object },
  '#withType':: d.fn(help='', args=[d.arg(name='type', type=d.T.string)]),
  withType(type): { type: type },
  '#mixin': 'ignore',
  mixin: self,
}
