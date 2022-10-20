{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='certificateSigningRequestSpec', url='', help='"CertificateSigningRequestSpec contains the certificate request."'),
  '#withExtra':: d.fn(help='"extra contains extra attributes of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable."', args=[d.arg(name='extra', type=d.T.object)]),
  withExtra(extra): { extra: extra },
  '#withExtraMixin':: d.fn(help='"extra contains extra attributes of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='extra', type=d.T.object)]),
  withExtraMixin(extra): { extra+: extra },
  '#withGroups':: d.fn(help='"groups contains group membership of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable."', args=[d.arg(name='groups', type=d.T.array)]),
  withGroups(groups): { groups: if std.isArray(v=groups) then groups else [groups] },
  '#withGroupsMixin':: d.fn(help='"groups contains group membership of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='groups', type=d.T.array)]),
  withGroupsMixin(groups): { groups+: if std.isArray(v=groups) then groups else [groups] },
  '#withRequest':: d.fn(help='"request contains an x509 certificate signing request encoded in a \\"CERTIFICATE REQUEST\\" PEM block. When serialized as JSON or YAML, the data is additionally base64-encoded."', args=[d.arg(name='request', type=d.T.string)]),
  withRequest(request): { request: request },
  '#withSignerName':: d.fn(help='"signerName indicates the requested signer, and is a qualified name.\\n\\nList/watch requests for CertificateSigningRequests can filter on this field using a \\"spec.signerName=NAME\\" fieldSelector.\\n\\nWell-known Kubernetes signers are:\\n 1. \\"kubernetes.io/kube-apiserver-client\\": issues client certificates that can be used to authenticate to kube-apiserver.\\n  Requests for this signer are never auto-approved by kube-controller-manager, can be issued by the \\"csrsigning\\" controller in kube-controller-manager.\\n 2. \\"kubernetes.io/kube-apiserver-client-kubelet\\": issues client certificates that kubelets use to authenticate to kube-apiserver.\\n  Requests for this signer can be auto-approved by the \\"csrapproving\\" controller in kube-controller-manager, and can be issued by the \\"csrsigning\\" controller in kube-controller-manager.\\n 3. \\"kubernetes.io/kubelet-serving\\" issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.\\n  Requests for this signer are never auto-approved by kube-controller-manager, and can be issued by the \\"csrsigning\\" controller in kube-controller-manager.\\n\\nMore details are available at https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers\\n\\nCustom signerNames can also be specified. The signer defines:\\n 1. Trust distribution: how trust (CA bundles) are distributed.\\n 2. Permitted subjects: and behavior when a disallowed subject is requested.\\n 3. Required, permitted, or forbidden x509 extensions in the request (including whether subjectAltNames are allowed, which types, restrictions on allowed values) and behavior when a disallowed extension is requested.\\n 4. Required, permitted, or forbidden key usages / extended key usages.\\n 5. Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.\\n 6. Whether or not requests for CA certificates are allowed."', args=[d.arg(name='signerName', type=d.T.string)]),
  withSignerName(signerName): { signerName: signerName },
  '#withUid':: d.fn(help='"uid contains the uid of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable."', args=[d.arg(name='uid', type=d.T.string)]),
  withUid(uid): { uid: uid },
  '#withUsages':: d.fn(help='"usages specifies a set of key usages requested in the issued certificate.\\n\\nRequests for TLS client certificates typically request: \\"digital signature\\", \\"key encipherment\\", \\"client auth\\".\\n\\nRequests for TLS serving certificates typically request: \\"key encipherment\\", \\"digital signature\\", \\"server auth\\".\\n\\nValid values are:\\n \\"signing\\", \\"digital signature\\", \\"content commitment\\",\\n \\"key encipherment\\", \\"key agreement\\", \\"data encipherment\\",\\n \\"cert sign\\", \\"crl sign\\", \\"encipher only\\", \\"decipher only\\", \\"any\\",\\n \\"server auth\\", \\"client auth\\",\\n \\"code signing\\", \\"email protection\\", \\"s/mime\\",\\n \\"ipsec end system\\", \\"ipsec tunnel\\", \\"ipsec user\\",\\n \\"timestamping\\", \\"ocsp signing\\", \\"microsoft sgc\\", \\"netscape sgc\\', args=[d.arg(name='usages', type=d.T.array)]),
  withUsages(usages): { usages: if std.isArray(v=usages) then usages else [usages] },
  '#withUsagesMixin':: d.fn(help='"usages specifies a set of key usages requested in the issued certificate.\\n\\nRequests for TLS client certificates typically request: \\"digital signature\\", \\"key encipherment\\", \\"client auth\\".\\n\\nRequests for TLS serving certificates typically request: \\"key encipherment\\", \\"digital signature\\", \\"server auth\\".\\n\\nValid values are:\\n \\"signing\\", \\"digital signature\\", \\"content commitment\\",\\n \\"key encipherment\\", \\"key agreement\\", \\"data encipherment\\",\\n \\"cert sign\\", \\"crl sign\\", \\"encipher only\\", \\"decipher only\\", \\"any\\",\\n \\"server auth\\", \\"client auth\\",\\n \\"code signing\\", \\"email protection\\", \\"s/mime\\",\\n \\"ipsec end system\\", \\"ipsec tunnel\\", \\"ipsec user\\",\\n \\"timestamping\\", \\"ocsp signing\\", \\"microsoft sgc\\", \\"netscape sgc\\\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='usages', type=d.T.array)]),
  withUsagesMixin(usages): { usages+: if std.isArray(v=usages) then usages else [usages] },
  '#withUsername':: d.fn(help='"username contains the name of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable."', args=[d.arg(name='username', type=d.T.string)]),
  withUsername(username): { username: username },
  '#mixin': 'ignore',
  mixin: self,
}