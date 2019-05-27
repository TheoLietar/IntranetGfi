package controller;

import org.snmp4j.CommunityTarget;
import org.snmp4j.PDU;
import org.snmp4j.Snmp;
import org.snmp4j.TransportMapping;
import org.snmp4j.event.ResponseEvent;
import org.snmp4j.mp.SnmpConstants;
import org.snmp4j.smi.*;
import org.snmp4j.transport.DefaultUdpTransportMapping;
import javax.servlet.http.HttpServlet;

/**
 * Classe utilisant le protocole SNMP afin de récupérer les statistiques d'un PORT notamment son status
 */
public class SnmpWalk extends HttpServlet {

    /**
     * Méthode afin de récupérer le status d'un port que ce soit UP ou DOWN
     * @param ip Adresse IP de l'équipement en question
     * @param oid Série de chiffre avec l'indice de l'interface voulu en fonction de ce quo'n veut récupérér
     * @param community Chaque interface appartient à une communauté
     * @param port Port sur lequel nous voulons utiliser ce protocole SNMP ( 161 )
     * @return le status du port ( 1=UP, 2=DOWN)
     * @throws Exception
     */
    public String getIfOperStatus(String ip, String oid, String community, String port) throws Exception{
        TransportMapping transport = new DefaultUdpTransportMapping();
        transport.listen();
        int snmpVersion = SnmpConstants.version1;

        CommunityTarget target = new CommunityTarget();
        target.setCommunity(new OctetString(community));
        target.setVersion(snmpVersion);
        target.setAddress(new UdpAddress(ip+"/"+port));
        target.setRetries(2);
        target.setTimeout(500);

        PDU pdu = new PDU();
        pdu.add(new VariableBinding(new OID(oid)));
        pdu.setType(PDU.GET);
        pdu.setRequestID(new Integer32(1));

        Snmp snmp = new Snmp(transport);

        ResponseEvent response = snmp.get(pdu,target);
        PDU responsePDU = response.getResponse();

        if(response != null){
            responsePDU = response.getResponse();

            if(responsePDU != null){
                int errorStatus = responsePDU.getErrorStatus();
                int errorIndex = responsePDU.getErrorIndex();
                String errorStatusText = responsePDU.getErrorStatusText();

                if(errorStatus == PDU.noError){
//                    System.out.println("Snmp Get Response = " + responsePDU.getVariableBindings());
                }else{
//                    System.out.println("Error : Request Failed");
//                    System.out.println("Error Status = " + errorStatus);
//                    System.out.println("Error index = " + errorIndex);
//                    System.out.println("Error Status Text = " + errorStatusText);
                }
            }else{
//                System.out.println("Error : Response PDU is null");
            }
        }else {
//            System.out.println("Error : Agent Timeout");
        }

        snmp.close();

        int idx = responsePDU.toString().indexOf("VBS");
        String chaine = responsePDU.toString().substring(idx,responsePDU.toString().length()-1);

        return chaine;

    }


}
