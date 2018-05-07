xml x = xml `<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:pay="http://freo.me/payment/">
   <soapenv:Header/>
   <soapenv:Body>
      <pay:authorise>
         <pay:card>
            <pay:cardnumber>?</pay:cardnumber>
            <pay:postcode>?</pay:postcode>
            <pay:name>?</pay:name>
            <pay:expiryMonth>?</pay:expiryMonth>
            <pay:expiryYear>?</pay:expiryYear>
            <pay:cvc>?</pay:cvc>
         </pay:card>
         <pay:merchant>?</pay:merchant>
         <pay:reference>?</pay:reference>
         <pay:amount>?</pay:amount>
      </pay:authorise>
   </soapenv:Body>
</soapenv:Envelope>`;
