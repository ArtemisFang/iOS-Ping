# iOS-Ping
Use apple's official SimplePing library to get network latency and use the swift language to write.


PlainPing.ping("www.baidu.com", withTimeout: 1.0, completionBlock: { (timeElapsed:Double?, error:Error?) in
    if let latency = timeElapsed {
        print("latency (ms): \(latency)")
    }
    if let error = error {
        print("error: \(error.localizedDescription)")
    }
})


by Artemis
