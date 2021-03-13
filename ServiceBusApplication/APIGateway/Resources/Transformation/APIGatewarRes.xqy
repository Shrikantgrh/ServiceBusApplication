xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://syneoshealth.com/APIGateway/Schemas";
(:: import schema at "../Schemas/APIGateway.xsd" ::)

declare variable $ResponseCode as xs:string external;
declare variable $ResponseMessage as xs:string external;
declare variable $ResultData as  element() external;

declare function local:func($ResponseCode as xs:string, 
                            $ResponseMessage as xs:string, 
                            $ResultData as  element()) 
                            as element() (:: schema-element(ns1:processResponse) ::) {
    <ns1:processResponse>
        <ns1:ResultData>{$ResultData}</ns1:ResultData>
        <ns1:StatusCode>{fn:data($ResponseCode)}</ns1:StatusCode>
        <ns1:StatusMessage>{fn:data($ResponseMessage)}</ns1:StatusMessage>
    </ns1:processResponse>
};

local:func($ResponseCode, $ResponseMessage, $ResultData)