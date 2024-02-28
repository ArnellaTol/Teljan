//
//  testGPT.swift
//  TELJAN
//
//  Created by Arnella Tolegen on 27.02.2024.
//

import Foundation

struct OpenAIRequest: Codable {
    let model: String
    let max_tokens: Int
    let messages: [Message]
}

struct Message: Codable {
    let role: String
    let content: String
}

struct ChatCompletion: Codable {
    let id: String
    let object: String
    let created: TimeInterval
    let model: String
    let choices: [ChatChoice]
    let usage: Usage
    let systemFingerprint: String

    private enum CodingKeys: String, CodingKey {
        case id, object, created, model, choices, usage
        case systemFingerprint = "system_fingerprint"
    }
}

struct ChatChoice: Codable {
    let index: Int
    let message: Message
    let logprobs: [Float]?
    let finishReason: String

    private enum CodingKeys: String, CodingKey {
        case index, message, logprobs
        case finishReason = "finish_reason"
    }
}

struct Usage: Codable {
    let promptTokens: Int
    let completionTokens: Int
    let totalTokens: Int

    private enum CodingKeys: String, CodingKey {
        case promptTokens = "prompt_tokens"
        case completionTokens = "completion_tokens"
        case totalTokens = "total_tokens"
    }
}

enum OpenAIError: Error {
    case requestEncoding
    case noData
    case decoding
    case noChoices
}

class OpenAIService1 {
    static let apiKey = "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"
    static let endpoint = "https://api.openai.com/v1/chat/completions"

    static func generateResponse(for prompt: String, completion: @escaping (Result<String, OpenAIError>) -> Void) {
        let openAIRequest = OpenAIRequest(model: "gpt-3.5-turbo", max_tokens: 200, messages: [Message(role: "user", content: prompt)] )

        guard let requestData = try? JSONEncoder().encode(openAIRequest) else {
            completion(.failure(.requestEncoding))
            return
        }

        var request = URLRequest(url: URL(string: endpoint)!)
        request.httpMethod = "POST"
        request.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = requestData

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            if let error = error {
                completion(.failure(.decoding))
                return
            }

            guard let data = data else {
                completion(.failure(.noData))
                return
            }

            do {
                let openAIResponse = try JSONDecoder().decode(ChatCompletion.self, from: data)
                if let generatedText = openAIResponse.choices.first?.message.content {
                    completion(.success(generatedText))
                } else {
                    completion(.failure(.noChoices))
                }
                
            } catch {
                completion(.failure(.decoding))
            }
        }

        task.resume()
    }
}

