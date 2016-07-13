FROM pataquets/newrelic-platform-installer

RUN \
  bin/node npi.js fetch ar.com.3legs.newrelic.jmxremote -y && \
  bin/node npi.js config set license_key YOUR_LICENSE_KEY && \
  bin/node npi.js prepare ar.com.3legs.newrelic.jmxremote --noedit --override

#ADD plugin.json ./plugins/ar.com.3legs.newrelic.jmxremote/newrelic_3legs_plugin-2.0.0/config/plugin.json

CMD [ "bin/node", "npi.js", "start", "ar.com.3legs.newrelic.jmxremote", "--foreground" ]
