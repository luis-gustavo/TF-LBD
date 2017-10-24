//
//  InsertionOfEmployee.swift
//  TF-LBD
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 20/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class InsertionOfEmployee{
    func insertionOfRg(realm: Realm){
        let rg1 = Rg()
        rg1.number = "29.820.541-5"
        rg1.expeditionDate = Date(timeIntervalSinceNow: 60*60*24*365*1)
        
        let rg2 = Rg()
        rg2.number = "16.437.925-3"
        rg2.expeditionDate = Date(timeIntervalSinceNow: 60*62*24*365*2)
        
        let rg3 = Rg()
        rg3.number = "10.995.759-3"
        rg3.expeditionDate = Date(timeIntervalSinceNow: 56*60*24*365*3)
        
        let rg4 = Rg()
        rg4.number = "36.249.828-3"
        rg4.expeditionDate = Date(timeIntervalSinceNow: 60*60*22*365*3)
        
        let rg5 = Rg()
        rg5.number = "36.178.812-5"
        rg5.expeditionDate = Date(timeIntervalSinceNow: 60*60*24*365*6)
        
        let rg6 = Rg()
        rg6.number = "40.708.464-2"
        rg6.expeditionDate = Date(timeIntervalSinceNow: 60*56*24*365*7)
        
        let rg7 = Rg()
        rg7.number = "11.456.892-3"
        rg7.expeditionDate = Date(timeIntervalSinceNow: 67*60*24*365*3)
        
        let rg8 = Rg()
        rg8.number = "27.938.093-8"
        rg8.expeditionDate = Date(timeIntervalSinceNow: 60*60*24*365*4)
        
        let rg9 = Rg()
        rg9.number = "21.304.045-1"
        rg9.expeditionDate = Date(timeIntervalSinceNow: 60*75*24*365*2)
        
        let rg10 = Rg()
        rg10.number = "23.588.896-5"
        rg10.expeditionDate = Date(timeIntervalSinceNow: 60*82*24*365*2)
        
        try! realm.write {
            realm.add([rg1, rg2, rg3, rg4, rg5, rg6, rg7, rg8, rg9, rg10])
        }
    }
    
    func insertionOfParents(realm: Realm){
        let parents1 = Parents()
        parents1.fatherName = "Pedro Lima Martins"
        parents1.motherName = "Lara Vieira Lima Martins"
        
        let parents2 = Parents()
        parents2.fatherName = "Daniel Cardoso Silva"
        parents2.motherName = "Maria Rosa Daniel Cardoso Silva"
        
        let parents3 = Parents()
        parents3.fatherName = "Lucas Rodrigues Souza"
        parents3.motherName = "Emanuela Rocha Rodrigues Souza"
        
        let parents4 = Parents()
        parents4.fatherName = "Kauê Souza Barros"
        parents4.motherName = "Julia Balestrini Souza Barros"
        
        let parents5 = Parents()
        parents5.fatherName = "Caio Silva Almeida"
        parents5.motherName = "Camila Taveira Silva Almeida"
        
        let parents6 = Parents()
        parents6.fatherName = "Luis Almeida Goncalves"
        parents6.motherName = "Bruna Alves Almeida Goncalves"
        
        let parents7 = Parents()
        parents7.fatherName = "Guilherme Sousa Cavalcanti"
        parents7.motherName = "Beatriz Santos Sousa Cavalcanti"
        
        let parents8 = Parents()
        parents8.fatherName = "João Pereira Ribeiro"
        parents8.motherName = "Maria Eduarda Costa Pereira Ribeiro"
        
        let parents9 = Parents()
        parents9.fatherName = "Tiago Pinto Oliveira"
        parents9.motherName = "Gabriela Costa Pinto Oliveira"
        
        let parents10 = Parents()
        parents10.fatherName = "Kai Santos Cardoso"
        parents10.motherName = "Jessica Lima Santos Cardoso"
        
        try! realm.write {
            realm.add([parents1, parents2, parents3, parents4, parents5, parents6, parents7, parents8, parents9, parents10])
        }
    }
    
    func insertionOfSex(realm: Realm){
        let masculino = Sex()
        masculino.sexType = "Masculino"
        
        let feminino = Sex()
        feminino.sexType = "Feminino"
        
        try! realm.write {
            realm.add([masculino, feminino])
        }
    }
    
    func insertionOfCivilState(realm: Realm){
        let solteiro = CivilState()
        solteiro.civilStateDescription = "Solteiro(a)"
        
        let casado = CivilState()
        casado.civilStateDescription = "Casado(a)"
        
        let divorciado = CivilState()
        divorciado.civilStateDescription = "Divorciado(a)"
        
        let viuvo = CivilState()
        viuvo.civilStateDescription = "Viúvo(a)"
        
        let separado = CivilState()
        separado.civilStateDescription = "Separado(a)"
        
        try! realm.write {
            realm.add([solteiro, casado, divorciado, viuvo, separado])
        }
    }
    
    func insertionOfSchoolDegree(realm: Realm){
        let fundamentalIncompleto = SchoolDegree()
        fundamentalIncompleto.schoolDegreeDescription = "Fundamental incompleto"
        
        let fundamentalCompleto = SchoolDegree()
        fundamentalCompleto.schoolDegreeDescription = "Fundamental completo"
        
        let medioIncompleto = SchoolDegree()
        medioIncompleto.schoolDegreeDescription = "Médio incompleto"
        
        let medioCompleto = SchoolDegree()
        medioCompleto.schoolDegreeDescription = "Médio completo"
        
        let superiorIncompleto = SchoolDegree()
        superiorIncompleto.schoolDegreeDescription = "Superior incompleto"
        
        let superiorCompleto = SchoolDegree()
        superiorCompleto.schoolDegreeDescription = "Superior completo"
        
        let posGraduacaoIncompleto = SchoolDegree()
        posGraduacaoIncompleto.schoolDegreeDescription = "Pós-graduação(Lato senso) incompleto"
        
        let posGraduacaoCompleto = SchoolDegree()
        posGraduacaoCompleto.schoolDegreeDescription = "Pós-graduação(Lato senso) completo"
        
        let posGraduaçãoMestradoIncompleto = SchoolDegree()
        posGraduaçãoMestradoIncompleto.schoolDegreeDescription = "Pós-graduação(Stricto sensu, nível mestrado) incompleto"
        
        let posGraduacaoMestradoCompleto = SchoolDegree()
        posGraduacaoMestradoCompleto.schoolDegreeDescription = "Pós-graduação(Stricto sensu, nível mestrado) completo"
        
        let posGraduacaoDoutoradoIncompleto = SchoolDegree()
        posGraduacaoDoutoradoIncompleto.schoolDegreeDescription = "Pós-graduação(Stricto sensu, nível doutor) incompleto"
        
        let posGraduacaoDoutoradoCompleto = SchoolDegree()
        posGraduacaoDoutoradoCompleto.schoolDegreeDescription = "Pós-graduação(Stricto sensu, nível doutor) completo"
        
        try! realm.write {
            realm.add([fundamentalIncompleto, fundamentalCompleto, medioIncompleto, medioCompleto, superiorCompleto, superiorIncompleto, posGraduacaoCompleto, posGraduacaoIncompleto, posGraduacaoMestradoCompleto, posGraduaçãoMestradoIncompleto, posGraduacaoDoutoradoCompleto, posGraduacaoDoutoradoIncompleto])
        }
    }
    
    func insertionOfEmployee(realm: Realm){
        let employee1 = Employee()
        employee1.address = realm.objects(Address.self).filter("zipCode = '96385235'").first
        employee1.civilState = realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first
        employee1.cpf = "982.627.429-15"
        employee1.email = "popoyix@asorent.com"
        employee1.job = realm.objects(Job.self).filter("jobDescription = 'Garçom'").first
        employee1.name = "Murilo Pereira Araujo"
        employee1.naturality = realm.objects(City.self).filter("name = 'São Paulo'").first
        employee1.parents = realm.objects(Parents.self).filter("fatherName = 'Pedro Lima Martins'").first
        //employee1.phone =
        employee1.rg = realm.objects(Rg.self).filter("number = '29.820.541-5'").first
        employee1.sex = realm.objects(Sex.self).filter("sexType = 'Masculino'").first
        
        let employee2 = Employee()
        employee2.address = realm.objects(Address.self).filter("zipCode = '96385234'").first
        employee2.civilState = realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first
        employee2.cpf = "737.800.577-00"
        employee2.email = "tuwaxinecu@ether123.net"
        employee2.job = realm.objects(Job.self).filter("jobDescription = 'Cozinheiro'").first
        employee2.name = "Rafael Carvalho Fernandes"
        employee2.naturality = realm.objects(City.self).filter("name = 'São Paulo'").first
        employee2.parents = realm.objects(Parents.self).filter("fatherName = 'Daniel Cardoso Silva'").first
        //employee2.phone =
        employee2.rg = realm.objects(Rg.self).filter("number = '16.437.925-3'").first
        employee2.sex = realm.objects(Sex.self).filter("sexType = 'Masculino'").first
        
        let employee3 = Employee()
        employee3.address = realm.objects(Address.self).filter("zipCode = '96385237'").first
        employee3.civilState = realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first
        employee3.cpf = "452.766.846-34"
        employee3.email = "pefenayib@averdov.com"
        employee3.job = realm.objects(Job.self).filter("jobDescription = 'Barman'").first
        employee3.name = "Martim Martins Dias"
        employee3.naturality = realm.objects(City.self).filter("name = 'São Paulo'").first
        employee3.parents = realm.objects(Parents.self).filter("fatherName = 'Lucas Rodrigues Souza'").first
        //employee3.phone =
        employee3.rg = realm.objects(Rg.self).filter("number = '10.995.759-3'").first
        employee3.sex = realm.objects(Sex.self).filter("sexType = 'Masculino'").first
        
        let employee4 = Employee()
        employee4.address = realm.objects(Address.self).filter("zipCode = '96385238'").first
        employee4.civilState = realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first
        employee4.cpf = "579.206.665-54"
        employee4.email = "hoyemuwoc@averdov.com"
        employee4.job = realm.objects(Job.self).filter("jobDescription = 'Gerente'").first
        employee4.name = "Victor Ferreira Alves"
        employee4.naturality = realm.objects(City.self).filter("name = 'São Paulo'").first
        employee4.parents = realm.objects(Parents.self).filter("fatherName = 'Kauê Souza Barros'").first
        //employee4.phone =
        employee4.rg = realm.objects(Rg.self).filter("number = '36.249.828-3'").first
        employee4.sex = realm.objects(Sex.self).filter("sexType = 'Masculino'").first
        
        let employee5 = Employee()
        employee5.address = realm.objects(Address.self).filter("zipCode = '96385239'").first
        employee5.civilState = realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first
        employee5.cpf = "783.762.406-84"
        employee5.email = "sosupodoh@zhorachu.com"
        employee5.job = realm.objects(Job.self).filter("jobDescription = 'Garçom'").first
        employee5.name = "Kaua Goncalves Barbosa"
        employee5.naturality = realm.objects(City.self).filter("name = 'São Paulo'").first
        employee5.parents = realm.objects(Parents.self).filter("fatherName = 'Caio Silva Almeida'").first
        //employee5.phone =
        employee5.rg = realm.objects(Rg.self).filter("number = '36.178.812-5'").first
        employee5.sex = realm.objects(Sex.self).filter("sexType = 'Masculino'").first
        
        let employee6 = Employee()
        employee6.address = realm.objects(Address.self).filter("zipCode = '96385212'").first
        employee6.civilState = realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first
        employee6.cpf = "346.268.739-52"
        employee6.email = "cakucuyef@payperex2.com"
        employee6.job = realm.objects(Job.self).filter("jobDescription = 'Cozinheiro'").first
        employee6.name = "Matilde Pereira Barros"
        employee6.naturality = realm.objects(City.self).filter("name = 'São Paulo'").first
        employee6.parents = realm.objects(Parents.self).filter("fatherName = 'Luis Almeida Goncalves'").first
        //employee6.phone =
        employee6.rg = realm.objects(Rg.self).filter("number = '40.708.464-2'").first
        employee6.sex = realm.objects(Sex.self).filter("sexType = 'Feminino'").first
        
        let employee7 = Employee()
        employee7.address = realm.objects(Address.self).filter("zipCode = '96385213'").first
        employee7.civilState = realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first
        employee7.cpf = "756.315.174-50"
        employee7.email = "vohipa@averdov.com"
        employee7.job = realm.objects(Job.self).filter("jobDescription = 'Barman'").first
        employee7.name = "Tânia Correia Pinto"
        employee7.naturality = realm.objects(City.self).filter("name = 'São Paulo'").first
        employee7.parents = realm.objects(Parents.self).filter("fatherName = 'Guilherme Sousa Cavalcanti'").first
        //employee7.phone =
        employee7.rg = realm.objects(Rg.self).filter("number = '11.456.892-3'").first
        employee7.sex = realm.objects(Sex.self).filter("sexType = 'Feminino'").first
        
        let employee8 = Employee()
        employee8.address = realm.objects(Address.self).filter("zipCode = '96385214'").first
        employee8.civilState = realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first
        employee8.cpf = "306.456.851-51"
        employee8.email = "nitapeho@averdov.com"
        employee8.job = realm.objects(Job.self).filter("jobDescription = 'Gerente'").first
        employee8.name = "Raissa Sousa Correia"
        employee8.naturality = realm.objects(City.self).filter("name = 'São Paulo'").first
        employee8.parents = realm.objects(Parents.self).filter("fatherName = 'João Pereira Ribeiro'").first
        //employee8.phone =
        employee8.rg = realm.objects(Rg.self).filter("number = '27.938.093-8'").first
        employee8.sex = realm.objects(Sex.self).filter("sexType = 'Feminino'").first
        
        let employee9 = Employee()
        employee9.address = realm.objects(Address.self).filter("zipCode = '96385215'").first
        employee9.civilState = realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first
        employee9.cpf = "453.442.435-37"
        employee9.email = "sitomow@ethersports.org"
        employee9.job = realm.objects(Job.self).filter("jobDescription = 'Garçom'").first
        employee9.name = "Beatrice Pinto Ferreira"
        employee9.naturality = realm.objects(City.self).filter("name = 'São Paulo'").first
        employee9.parents = realm.objects(Parents.self).filter("fatherName = 'Tiago Pinto Oliveira'").first
        //employee9.phone =
        employee9.rg = realm.objects(Rg.self).filter("number = '21.304.045-1'").first
        employee9.sex = realm.objects(Sex.self).filter("sexType = 'Feminino'").first
        
        let employee10 = Employee()
        employee10.address = realm.objects(Address.self).filter("zipCode = '96385216'").first
        employee10.civilState = realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first
        employee10.cpf = "231.030.353-49"
        employee10.email = "xizuz@nezdiro.org"
        employee10.job = realm.objects(Job.self).filter("jobDescription = 'Cozinheiro'").first
        employee10.name = "Clara Fernandes Silva"
        employee10.naturality = realm.objects(City.self).filter("name = 'São Paulo'").first
        employee10.parents = realm.objects(Parents.self).filter("fatherName = 'Kai Santos Cardoso'").first
        //employee10.phone =
        employee10.rg = realm.objects(Rg.self).filter("number = '23.588.896-5'").first
        employee10.sex = realm.objects(Sex.self).filter("sexType = 'Feminino'").first
        
        try! realm.write {
            realm.add([employee1, employee2, employee3, employee4, employee5, employee6, employee7, employee8, employee9, employee10])
        }
    }
    
    //MARK: - PREENCHER TELEFONE
    //TODO: - PREENCHER TELEFONE(precisa ter employee e client, por isso que ainda não dá para fazer)
//    func insertionOfPhone(realm: Realm){
//
//    }
    
    class func insertionOfAllEmployees(realm: Realm){
        let insertion = InsertionOfEmployee()
        insertion.insertionOfRg(realm: realm)
        insertion.insertionOfParents(realm: realm)
        insertion.insertionOfSex(realm: realm)
        insertion.insertionOfCivilState(realm: realm)
        insertion.insertionOfSchoolDegree(realm: realm)
        insertion.insertionOfEmployee(realm: realm)
        //MARK: - PREENCHER TELEFONE
        //TODO: - PREENCHER TELEFONE(precisa ter employee e client, por isso que ainda não dá para fazer)
        //insertion.insertionOfPhone(realm: realm)
    }
}
