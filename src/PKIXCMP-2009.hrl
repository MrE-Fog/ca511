%% Generated by the Erlang ASN.1 compiler. Version: 5.0.21
%% Purpose: Erlang record definitions for each named and unnamed
%% SEQUENCE and SET, and macro definitions for each value
%% definition in module PKIXCMP-2009.

-ifndef(_PKIXCMP_2009_HRL_).
-define(_PKIXCMP_2009_HRL_, true).

-record('PKIMessage', {
  header,
  body,
  protection = asn1_NOVALUE,
  extraCerts = asn1_NOVALUE
}).

-record('PKIHeader', {
  pvno,
  sender,
  recipient,
  messageTime = asn1_NOVALUE,
  protectionAlg = asn1_NOVALUE,
  senderKID = asn1_NOVALUE,
  recipKID = asn1_NOVALUE,
  transactionID = asn1_NOVALUE,
  senderNonce = asn1_NOVALUE,
  recipNonce = asn1_NOVALUE,
  freeText = asn1_NOVALUE,
  generalInfo = asn1_NOVALUE
}).

-record('PKIHeader_protectionAlg', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('ProtectedPart', {
  header,
  body
}).

-record('PBMParameter', {
  salt,
  owf,
  iterationCount,
  mac
}).

-record('PBMParameter_owf', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('PBMParameter_mac', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('DHBMParameter', {
  owf,
  mac
}).

-record('DHBMParameter_owf', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('DHBMParameter_mac', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('PKIStatusInfo', {
  status,
  statusString = asn1_NOVALUE,
  failInfo = asn1_NOVALUE
}).

-record('OOBCertHash', {
  hashAlg = asn1_NOVALUE,
  certId = asn1_NOVALUE,
  hashVal
}).

-record('OOBCertHash_hashAlg', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('Challenge', {
  owf = asn1_NOVALUE,
  witness,
  challenge
}).

-record('Challenge_owf', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('CertRepMessage', {
  caPubs = asn1_NOVALUE,
  response
}).

-record('CertResponse', {
  certReqId,
  status,
  certifiedKeyPair = asn1_NOVALUE,
  rspInfo = asn1_NOVALUE
}).

-record('CertifiedKeyPair', {
  certOrEncCert,
  privateKey = asn1_NOVALUE,
  publicationInfo = asn1_NOVALUE
}).

-record('KeyRecRepContent', {
  status,
  newSigCert = asn1_NOVALUE,
  caCerts = asn1_NOVALUE,
  keyPairHist = asn1_NOVALUE
}).

-record('RevDetails', {
  certDetails,
  crlEntryDetails = asn1_NOVALUE
}).

-record('RevDetails_crlEntryDetails_SEQOF', {
  extnID,
  critical = asn1_DEFAULT,
  extnValue
}).

-record('RevRepContent', {
  status,
  revCerts = asn1_NOVALUE,
  crls = asn1_NOVALUE
}).

-record('CAKeyUpdAnnContent', {
  oldWithNew,
  newWithOld,
  newWithNew
}).

-record('RevAnnContent', {
  status,
  certId,
  willBeRevokedAt,
  badSinceDate,
  crlDetails = asn1_NOVALUE
}).

-record('RevAnnContent_crlDetails_SEQOF', {
  extnID,
  critical = asn1_DEFAULT,
  extnValue
}).

-record('InfoTypeAndValue', {
  infoType,
  infoValue
}).

-record('ErrorMsgContent', {
  pKIStatusInfo,
  errorCode = asn1_NOVALUE,
  errorDetails = asn1_NOVALUE
}).

-record('CertStatus', {
  certHash,
  certReqId,
  statusInfo = asn1_NOVALUE
}).

-record('PollReqContent_SEQOF', {
  certReqId
}).

-record('PollRepContent_SEQOF', {
  certReqId,
  checkAfter,
  reason = asn1_NOVALUE
}).

-define('id-PasswordBasedMac', {1,2,840,113533,7,66,13}).
-define('id-DHBasedMac', {1,2,840,113533,7,66,30}).
-endif. %% _PKIXCMP_2009_HRL_
