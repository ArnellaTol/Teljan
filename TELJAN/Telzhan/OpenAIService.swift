//
//  OpenAIService.swift
//  TELJAN
//
//  Created by Arnella Tolegen on 03.12.2023.
//

//import Foundation
//import Alamofire
//import Combine
//
//class OpenAIService{
//    let baseURL = "https://api.openai.com/v1/"
//    
//    func sendMessage(message: String) -> AnyPublisher<OpenAICompletionsResponse, Error> {
//        let body = OpenAICompletionsBody(model: "text-davinci-003", prompt: message, temperature: 0.1, max_tokens: 500) 
//
//        
//        let headers: HTTPHeaders = [
//            "Authorization": "Bearer \(Constants.openAIAPIKey)"
//        ]
//        
//        return Future { [weak self] promice in
//            guard let self = self else {return}
//            
//            AF.request(self.baseURL + "completions", method: .post, parameters: body, encoder: .json, headers: headers)
//                .responseDecodable(of: OpenAICompletionsResponse.self)
//            { response in
//                print(response.result)
//                
//                switch response.result{
//                    case .success(let result):
//                    promice(.success(result))
//                    
//                case .failure(let error):
//                    promice(.failure(error))
//                }
//            }
//        }
//        .eraseToAnyPublisher()
//        
//        
//    }
//}
//
//struct OpenAICompletionsBody: Encodable {
//    let model: String
//    let prompt: String
//    let temperature: Float?
//    let max_tokens: Float?
//}
//
//struct OpenAICompletionsResponse: Decodable {
//    let id: String
//    let choices: [OpenAICompletionChoices]
//}
//
//struct OpenAICompletionChoices: Decodable {
//    let text: String
//}
//
//
//struct ChatMessage {
//    let id: String
//    let content: String
//    let sender: MessageSender
//}
//
//enum MessageSender {
//    case me
//    case gpt
//}
//
////extension ChatMessage{
////    static let sampleMessages = [
////        ChatMessage(id: UUID().uuidString, content: "Me", sender: .me),
////        ChatMessage(id: UUID().uuidString, content: "gpt", sender: .gpt),
////        ChatMessage(id: UUID().uuidString, content: "Me2", sender: .me),
////        ChatMessage(id: UUID().uuidString, content: "gpt2", sender: .gpt)
////    ]
////}
//
//enum Constants {
//    static let openAIAPIKey = "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"
//    //
//    //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
//}
