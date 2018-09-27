# Web Key Service Server Tool
require ["envelope", "vnd.dovecot.pipe"];

if envelope :all :contains ["To"] "key-submission@growtharchitect.fi" {
  if address :DOMAIN :contains ["From"] ".growtharchitect.fi" {
    discard;
    stop;
  }
  if allof (NOT envelope :all :contains "From" "key-submission@growtharchitect.fi",
            NOT header :is ["X-WKS-Loop"] ["wks.growtharchitect.fi"]) {
    pipe "wks-server" [ "key-submission@growtharchitect.fi" ];
    discard;
  }
}
