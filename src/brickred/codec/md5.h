#ifndef BRICKRED_CODEC_MD5_H
#define BRICKRED_CODEC_MD5_H

#include <stdint.h>
#include <cstddef>
#include <string>

#include <brickred/class_util.h>

namespace brickred {
namespace codec {

class Md5 {
public:
    Md5();
    ~Md5();
    void reset();

    void update(const char *buffer, size_t size);
    void digest(char hash[16]);
    std::string digest();

private:
    BRICKRED_NONCOPYABLE(Md5)

    uint32_t hash_[4];
    uint8_t work_block_[64];
    uint64_t message_size_;
};

std::string md5(const std::string &str);
std::string md5(const char *buffer, size_t size);
std::string md5Binary(const std::string &str);
std::string md5Binary(const char *buffer, size_t size);

} // namespace codec
} // namespace brickred

#endif
