//
//  Network.swift
//  Chirpper
//
//  Created by Joel Yin on 4/18/21.
//

import Foundation
import Apollo
import ApolloWebSocket

class HasuraNetwork {
    static let shared = HasuraNetwork()
    let graphEndpoint = "https://accurate-titmouse-99.hasura.app/v1/graphql"
    var apolloClient : ApolloClient?
    let authPayloads = ["x-hasura-admin-secret": "Ob4Ga3tb1BRP6cvwWPIewjPvA3YwH2XOzFX5TKd9IsIy2PrmSqJyu5klSTKzY1F0"]
    
    
//    private(set) lazy var apollo = ApolloClient(url: URL(string: graphEndpoint)!)
    private(set) lazy var apollo: ApolloClient = {
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        
        let client = URLSessionClient()
        let provider = LegacyInterceptorProvider(client: client, store: store)
        let url = URL(string: graphEndpoint)!
        let requestChainTransport = RequestChainNetworkTransport(interceptorProvider: provider,
                                                                      endpointURL: url, additionalHeaders: authPayloads)
                                                                      

        // Remember to give the store you already created to the client so it
        // doesn't create one on its own
        return ApolloClient(networkTransport: requestChainTransport,
                         store: store)
    }()
}
