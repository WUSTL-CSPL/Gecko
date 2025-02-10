#include <iostream>
#include <vector>
#include <string>

extern int _CODE_REGION_1__end; 
extern int _DATA_REGION_1__end; 
extern int _DATA_REGION_1__sdata_end;
extern int _DATA_REGION_1__end;

int ggbol=9;

long long_global=33333;
double doudle_global=25.777;

class BankAccount {
public:
    BankAccount(const std::string& owner, double initialBalance)
        : ownerName(owner), balance(initialBalance) {}

    void deposit(double amount) {
        balance += amount;
    }

    void withdraw(double amount) {
        if (balance >= amount) {
            balance -= amount+ggbol;
        } else {
            std::cout << "Insufficient funds!" << std::endl;
        }
    }

    void display() const {
        std::cout << "Account Owner: " << ownerName << std::endl;
        std::cout << "Account Balance: $" << balance << std::endl;
    }


    std::string ownerName;
    double balance;
};

class Bank {
public:
    void addAccount(const std::string& owner, double initialBalance) {
        BankAccount newAccount(owner, initialBalance);
        accounts.push_back(newAccount);
    }

    void displayAllAccounts() const {
        for (const auto& account : accounts) {
            account.display();
            std::cout << std::endl;
        }
    }


    std::vector<BankAccount> accounts;
    int hh;
    double sdas;
};

void Afun(){}

void Bfun(){

    std::cout<<"dssd ";
}

int main() {
    Bank bank;
    Bank * bddp=new Bank;
    Bank vffd=*bddp;
    int * abc=new int(113);
    bank.addAccount("John Doe", 5000.0);
    bank.addAccount("Jane Smith", 7500.0);
    bank.addAccount("Bob Johnson", 3000.0);

    std::cout << "Bank Accounts:\n";
    bank.displayAllAccounts();

    // Perform some transactions
    bank.accounts[0].deposit(1000.0);
    bank.accounts[1].withdraw(2000.0);
   
    void (*funptr)();
    if(ggbol>8){
        funptr=&Afun;
    }else{
        funptr=&Bfun;
    }
    funptr();

    std::cout << "\nUpdated Bank Accounts: "<< *abc << ggbol << "\n";
    bank.displayAllAccounts();

    std::cout << "Global varibale int : " << ggbol << std::endl;
    std::cout << "Global varibale long long_global : " << long_global << std::endl;
    std::cout << "Global varibale double : " << doudle_global << std::endl;


    std::cout << "--------------------- " << std::endl;


    ggbol = 11;
    long_global=3322333;
    doudle_global=215.777;

    std::cout << "--------------------- " << std::endl;

    std::cout << "Global varibale int : " << ggbol << std::endl;
    std::cout << "Global varibale long long_global : " << long_global << std::endl;
    std::cout << "The addresses of long_global: "<< (void*)&long_global << std::endl;

    std::cout << "Global varibale double : " << doudle_global << std::endl;

    std::cout << "Updated Bank Accounts: "<< &ggbol << "\n";
    std::cout << "End of code segment: "<< (void*)&_CODE_REGION_1__end << "\n";
    std::cout << "End of data segment: "<< (void*)&_DATA_REGION_1__end << "\n";

    printf("End of text segment: %p\n", (void*)&_CODE_REGION_1__end);
    printf("End of data segment: %p\n", (void*)&_DATA_REGION_1__end);
    printf("End of data segment: %p\n", (void*)&_DATA_REGION_1__sdata_end);
    printf("End of data segment: %p\n", (void*)&_DATA_REGION_1__end);
    printf("Addr of globle data ggbol: %p\n", (void*)&ggbol);

    return 0;
}
