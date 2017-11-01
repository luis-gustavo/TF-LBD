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
        employee1.addressId = realm.objects(Address.self).filter("zipCode = '96385235'").first?.id
        employee1.civilStateId = (realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first?.id)!
        employee1.cpf = "982.627.429-15"
        employee1.email = "popoyix@asorent.com"
        employee1.jobId = (realm.objects(Job.self).filter("jobDescription = 'Garçom'").first?.id)!
        employee1.name = "Murilo Pereira Araujo"
        employee1.naturalityId = (realm.objects(City.self).filter("name = 'São Paulo'").first?.id)!
        employee1.parentsId = (realm.objects(Parents.self).filter("fatherName = 'Pedro Lima Martins'").first?.id)!
        let phone1 = Phone()
        phone1.number = "98787-7509"
        employee1.phoneId = phone1.id
        employee1.rgId = (realm.objects(Rg.self).filter("number = '29.820.541-5'").first?.number)!
        employee1.sexId = (realm.objects(Sex.self).filter("sexType = 'Masculino'").first?.id)!

        let employee2 = Employee()
        employee2.addressId = realm.objects(Address.self).filter("zipCode = '96385234'").first?.id
        employee2.civilStateId = (realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first?.id)!
        employee2.cpf = "737.800.577-00"
        employee2.email = "tuwaxinecu@ether123.net"
        employee2.jobId = (realm.objects(Job.self).filter("jobDescription = 'Cozinheiro'").first?.id)!
        employee2.name = "Rafael Carvalho Fernandes"
        employee2.naturalityId = (realm.objects(City.self).filter("name = 'São Paulo'").first?.id)!
        employee2.parentsId = (realm.objects(Parents.self).filter("fatherName = 'Daniel Cardoso Silva'").first?.id)!
        let phone2 = Phone()
        phone2.number = "99352-8665"
        employee2.phoneId = phone2.id
        employee2.rgId = (realm.objects(Rg.self).filter("number = '16.437.925-3'").first?.number)!
        employee2.sexId = (realm.objects(Sex.self).filter("sexType = 'Masculino'").first?.id)!

        let employee3 = Employee()
        employee3.addressId = realm.objects(Address.self).filter("zipCode = '96385237'").first?.id
        employee3.civilStateId = (realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first?.id)!
        employee3.cpf = "452.766.846-34"
        employee3.email = "pefenayib@averdov.com"
        employee3.jobId = (realm.objects(Job.self).filter("jobDescription = 'Barman'").first?.id)!
        employee3.name = "Martim Martins Dias"
        employee3.naturalityId = (realm.objects(City.self).filter("name = 'São Paulo'").first?.id)!
        employee3.parentsId = (realm.objects(Parents.self).filter("fatherName = 'Lucas Rodrigues Souza'").first?.id)!
        let phone3 = Phone()
        phone3.number = "98328-9199"
        employee3.phoneId = phone3.id
        employee3.rgId = (realm.objects(Rg.self).filter("number = '10.995.759-3'").first?.number)!
        employee3.sexId = (realm.objects(Sex.self).filter("sexType = 'Masculino'").first?.id)!

        let employee4 = Employee()
        employee4.addressId = realm.objects(Address.self).filter("zipCode = '96385238'").first?.id
        employee4.civilStateId = (realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first?.id)!
        employee4.cpf = "579.206.665-54"
        employee4.email = "hoyemuwoc@averdov.com"
        employee4.jobId = (realm.objects(Job.self).filter("jobDescription = 'Gerente'").first?.id)!
        employee4.name = "Victor Ferreira Alves"
        employee4.naturalityId = (realm.objects(City.self).filter("name = 'São Paulo'").first?.id)!
        employee4.parentsId = (realm.objects(Parents.self).filter("fatherName = 'Kauê Souza Barros'").first?.id)!
        let phone4 = Phone()
        phone4.number = "98487-9407"
        employee4.phoneId = phone4.id
        employee4.rgId = (realm.objects(Rg.self).filter("number = '36.249.828-3'").first?.number)!
        employee4.sexId = (realm.objects(Sex.self).filter("sexType = 'Masculino'").first?.id)!

        let employee5 = Employee()
        employee5.addressId = realm.objects(Address.self).filter("zipCode = '96385239'").first?.id
        employee5.civilStateId = (realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first?.id)!
        employee5.cpf = "783.762.406-84"
        employee5.email = "sosupodoh@zhorachu.com"
        employee5.jobId = (realm.objects(Job.self).filter("jobDescription = 'Garçom'").first?.id)!
        employee5.name = "Kaua Goncalves Barbosa"
        employee5.naturalityId = (realm.objects(City.self).filter("name = 'São Paulo'").first?.id)!
        employee5.parentsId = (realm.objects(Parents.self).filter("fatherName = 'Caio Silva Almeida'").first?.id)!
        let phone5 = Phone()
        phone5.number = "99103-1430"
        employee5.phoneId = phone5.id
        employee5.rgId = (realm.objects(Rg.self).filter("number = '36.178.812-5'").first?.number)!
        employee5.sexId = (realm.objects(Sex.self).filter("sexType = 'Masculino'").first?.id)!

        let employee6 = Employee()
        employee6.addressId = realm.objects(Address.self).filter("zipCode = '96385212'").first?.id
        employee6.civilStateId = (realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first?.id)!
        employee6.cpf = "346.268.739-52"
        employee6.email = "cakucuyef@payperex2.com"
        employee6.jobId = (realm.objects(Job.self).filter("jobDescription = 'Cozinheiro'").first?.id)!
        employee6.name = "Matilde Pereira Barros"
        employee6.naturalityId = (realm.objects(City.self).filter("name = 'São Paulo'").first?.id)!
        employee6.parentsId = (realm.objects(Parents.self).filter("fatherName = 'Luis Almeida Goncalves'").first?.id)!
        let phone6 = Phone()
        phone6.number = "99103-1414"
        employee6.phoneId = phone6.id
        employee6.rgId = (realm.objects(Rg.self).filter("number = '40.708.464-2'").first?.number)!
        employee6.sexId = (realm.objects(Sex.self).filter("sexType = 'Feminino'").first?.id)!

        let employee7 = Employee()
        employee7.addressId = realm.objects(Address.self).filter("zipCode = '96385213'").first?.id
        employee7.civilStateId = (realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first?.id)!
        employee7.cpf = "756.315.174-50"
        employee7.email = "vohipa@averdov.com"
        employee7.jobId = (realm.objects(Job.self).filter("jobDescription = 'Barman'").first?.id)!
        employee7.name = "Tânia Correia Pinto"
        employee7.naturalityId = (realm.objects(City.self).filter("name = 'São Paulo'").first?.id)!
        employee7.parentsId = (realm.objects(Parents.self).filter("fatherName = 'Guilherme Sousa Cavalcanti'").first?.id)!
        let phone7 = Phone()
        phone7.number = "99103-1410"
        employee7.phoneId = phone7.id
        employee7.rgId = (realm.objects(Rg.self).filter("number = '11.456.892-3'").first?.number)!
        employee7.sexId = (realm.objects(Sex.self).filter("sexType = 'Feminino'").first?.id)!

        let employee8 = Employee()
        employee8.addressId = realm.objects(Address.self).filter("zipCode = '96385214'").first?.id
        employee8.civilStateId = (realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first?.id)!
        employee8.cpf = "306.456.851-51"
        employee8.email = "nitapeho@averdov.com"
        employee8.jobId = (realm.objects(Job.self).filter("jobDescription = 'Gerente'").first?.id)!
        employee8.name = "Raissa Sousa Correia"
        employee8.naturalityId = (realm.objects(City.self).filter("name = 'São Paulo'").first?.id)!
        employee8.parentsId = (realm.objects(Parents.self).filter("fatherName = 'João Pereira Ribeiro'").first?.id)!
        let phone8 = Phone()
        phone8.number = "99103-1409"
        employee8.phoneId = phone8.id
        employee8.rgId = (realm.objects(Rg.self).filter("number = '27.938.093-8'").first?.number)!
        employee8.sexId = (realm.objects(Sex.self).filter("sexType = 'Feminino'").first?.id)!

        let employee9 = Employee()
        employee9.addressId = realm.objects(Address.self).filter("zipCode = '96385215'").first?.id
        employee9.civilStateId = (realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first?.id)!
        employee9.cpf = "453.442.435-37"
        employee9.email = "sitomow@ethersports.org"
        employee9.jobId = (realm.objects(Job.self).filter("jobDescription = 'Garçom'").first?.id)!
        employee9.name = "Beatrice Pinto Ferreira"
        employee9.naturalityId = (realm.objects(City.self).filter("name = 'São Paulo'").first?.id)!
        employee9.parentsId = (realm.objects(Parents.self).filter("fatherName = 'Tiago Pinto Oliveira'").first?.id)!
        let phone9 = Phone()
        phone9.number = "99103-1408"
        employee9.phoneId = phone9.id
        employee9.rgId = (realm.objects(Rg.self).filter("number = '21.304.045-1'").first?.number)!
        employee9.sexId = (realm.objects(Sex.self).filter("sexType = 'Feminino'").first?.id)!

        let employee10 = Employee()
        employee10.addressId = realm.objects(Address.self).filter("zipCode = '96385216'").first?.id
        employee10.civilStateId = (realm.objects(CivilState.self).filter("civilStateDescription = 'Solteiro(a)'").first?.id)!
        employee10.cpf = "231.030.353-49"
        employee10.email = "xizuz@nezdiro.org"
        employee10.jobId = (realm.objects(Job.self).filter("jobDescription = 'Cozinheiro'").first?.id)!
        employee10.name = "Clara Fernandes Silva"
        employee10.naturalityId = (realm.objects(City.self).filter("name = 'São Paulo'").first?.id)!
        employee10.parentsId = (realm.objects(Parents.self).filter("fatherName = 'Kai Santos Cardoso'").first?.id)!
        let phone10 = Phone()
        phone10.number = "99103-1439"
        employee10.phoneId = phone10.id
        employee10.rgId = (realm.objects(Rg.self).filter("number = '23.588.896-5'").first?.number)!
        employee10.sexId = (realm.objects(Sex.self).filter("sexType = 'Feminino'").first?.id)!

        try! realm.write {
            realm.add([employee1, employee2, employee3, employee4, employee5, employee6, employee7, employee8, employee9, employee10])
        }
    }

    class func insertionOfAllEmployees(realm: Realm){
        let insertion = InsertionOfEmployee()
        insertion.insertionOfRg(realm: realm)
        insertion.insertionOfParents(realm: realm)
        insertion.insertionOfSex(realm: realm)
        insertion.insertionOfCivilState(realm: realm)
        insertion.insertionOfSchoolDegree(realm: realm)
        insertion.insertionOfEmployee(realm: realm)
    }
}

