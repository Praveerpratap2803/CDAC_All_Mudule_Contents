// #include<iostream>
// #include<cctype>
// using namespace std;
// int main(){
//     string sentence;
//     getline(cin,sentence);
//     for(int i=0;i<sentence.size();i++){
//         if(sentence[i]==' '){
//             sentence[i]='*';
//         }
//         if(isupper(sentence[i])){
//             sentence[i]=tolower(sentence[i]);
//         }
//         if(islower(sentence[i])){
//             sentence[i]=toupper(sentence[i]);
//         }
//         if(isdigit(sentence[i])){
//             sentence[i]='?';
//         }
//     }
//     cout<<sentence;
//     return 0;
// }
#include <iostream>
using namespace std;

int main() {
    string sentence;
    getline(cin, sentence);

    for (int i = 0; i < sentence.size(); i++) {
        if (sentence[i] == ' ') {
            sentence[i] = '*';
        }
        if (isupper(sentence[i])) {
            sentence[i] = sentence[i]+32;
        }
        if (islower(sentence[i])) {
            sentence[i] = sentence[i]+32;
        }
        if (isdigit(sentence[i])) {
            sentence[i] = '?';
        }
    }

    cout << sentence;
    return 0;
}
