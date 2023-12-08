//
//  LoginView.swift
//  lab1_assignment
//
//  Created by Tarikk Brown on 12/6/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @StateObject var viewModel = AuthViewModel()
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 206 / 255, green: 255 / 255, blue: 96 / 255)
                    .ignoresSafeArea()
                VStack{
                    //image
                    Image("spotup_logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width:100, height: 120)
                        .padding(.vertical, 32)
                    
                    //form field
                    VStack(spacing: 24){
                        InputView(text: $email,
                                  title: "Email Address",
                                  placeholder: "name@example.com")
                        .autocapitalization(.none)
                        
                        InputView(text: $password,
                                  title: "Password",
                                  placeholder: "Enter Your Password",
                                  isSecureField: true)
                    }
                    .padding(.horizontal)
                    .padding(.top, 12)
                    
                    // sign in button
                    Button{
                        Task {  try await viewModel.signIn(withEmail: email, password: password)
                        }
                    } label: {
                        HStack {
                            Text("SIGN IN")
                                .fontWeight(.semibold)
                            Image(systemName: "arrow.right")
                        }
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                    }
                        .background(Color(.black))
                        .disabled(!formIsValid)
                        .opacity(formIsValid ? 1.0 : 0.5)
                        .cornerRadius(10)
                        .padding(.top, 24)
                    
                    Spacer()
                    
                    //sign up button
                    NavigationLink {
                        RegistrationView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack(spacing: 3){

                            Text("Don't have an account ?")
                                .foregroundColor(.black)
                            Text("Sign up")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.black)
                        }
                        .font(.system(size: 14))
                    }
                }
            }
        }
    }
}

// MARK: - AuthenticationFormProtocol

extension LoginView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
    }
}


#Preview {
    LoginView()
}
