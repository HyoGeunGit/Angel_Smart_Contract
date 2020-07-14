pragma solidity ^0.4.17;

contract Inbox {
    string public trash;
    string public UUID;
    string public companyName;
    string public contractName;
    string public price;
    bool public firstCommit;
    bool public secondCommit;
    bool public thirdCommit;
    bool public isFinish;
    int public trashNum;

    function onStart(
        string initialTrash, 
        int initialTrashNum, 
        string initialUUID, 
        string initialCompanyName, 
        string initialContractName,
        bool initialFirstCommit,
        bool initialSecondCommit,
        bool initialThirdCommit,
        bool initialIsFinish,
        string initialPrice
        ) 
        public {
            trash = initialTrash;
            UUID = initialUUID;
            companyName = initialCompanyName;
            contractName = initialContractName;
            price = initialPrice;
            firstCommit = initialFirstCommit;
            secondCommit = initialSecondCommit;
            thirdCommit = initialThirdCommit;
            isFinish = initialIsFinish;
            trashNum = initialTrashNum;
        }

    function setTrash(string newTrash) public {
        trash = newTrash;
    }
    
    function setUUID(string newUUID) public {
        UUID = newUUID;
    }

    function setCompanyName(string newCompany) public {
        companyName = newCompany;
    }

    function setContractName(string newContract) public {
        contractName = newContract;
    }

    function setPrice(string newPrice) public {
        price = newPrice;
    }

    function setFirstCommit(bool newFirstCommit) public {
        firstCommit = newFirstCommit;
    }

    function setSecondCommit(bool newSecondCommit) public {
        secondCommit = newSecondCommit;
    }

    function setThirdCommit(bool newThirdCommit) public {
        thirdCommit = newThirdCommit;
    }

    function setIsFinish(bool newIsFinish) public {
        isFinish = newIsFinish;
    }

    function setTrashNum(int newTrashNum) public {
        trashNum = newTrashNum;
    }
}
