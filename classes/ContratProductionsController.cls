public with sharing class ContratProductionsController {
  @AuraEnabled(cacheable=true)
  public static List<ContratProduction__c> getContratProductions() {
    return [
      SELECT Name, Prix_Tonne__c, Status__c, Tonnage_produire__c, Type__c
      FROM ContratProduction__c
      WHERE Status__c = 'Actif'
    ];
  }
}