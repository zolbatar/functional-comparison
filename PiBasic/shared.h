#pragma once
#include <array>
#include <vector>
#include <string>
#include <cmath>
#include <map>
#include <iostream>
#include <fstream>
#include <chrono>
#include <time.h>
#ifdef __unix__
#include <SDL2/SDL.h>
#else
#include <SDL.h>
#endif
#include "/home/daryl/repos/personal/PiBasic/V2/src/graphics/graphics.h"

typedef int VM_INT;
typedef double VM_FLOAT;
typedef std::string VM_STRING;

// File I/O
VM_INT channel_index = 0;
std::map<VM_INT, std::fstream> channels;
VM_INT open_in(std::string filename) {
	std::fstream file;
	file.open(filename, std::ios::in | std::ios::binary);
	if (!file) {
		std::cout << "File '" << filename << "' not created.";
	}
	VM_INT r = channel_index++;
	channels.insert(std::pair<VM_INT, std::fstream>(r, std::move(file)));
	return r;
}

void close(VM_INT channel) {
	if (channels.count(channel) == 0) {
		std::cout << "Unknown channel #" << channel << std::endl;
	}
	auto g = channels.find(channel);
	(*g).second.close();
	channels.erase(channel);
}

VM_INT bget(VM_INT channel) {
	auto g = channels.find(channel);
	char b = 0;
	(*g).second.read(&b, 1);
	return static_cast<VM_INT>(b);
}

VM_INT eof(VM_INT channel) {
	auto g = channels.find(channel);
	VM_INT eof = 0;
	if ((*g).second.eof()) {
		eof = 1;
	}
	return eof;
}

VM_INT asc(VM_STRING v) {
	VM_INT c = -1;
	if (v.length() != 0) {
		c = v[0];
	}
	return c;
}

VM_STRING chrs(VM_INT v) {
	v &= 0xFF;
	VM_STRING c = " ";
	c[0] = v;
	return c;
}

std::chrono::high_resolution_clock::time_point t1 = std::chrono::high_resolution_clock::now();
VM_INT get_clock() {
	std::chrono::high_resolution_clock::time_point t2 = std::chrono::high_resolution_clock::now();
	std::chrono::milliseconds time_span = std::chrono::duration_cast<std::chrono::milliseconds>(t2 - t1);
	double d = time_span.count() / 10.0;
	return static_cast<VM_INT>(d);
}

Graphics graphics;
void init() {
#if defined(_WIN32) || defined(WIN32) || defined(__unix__)
	graphics.init();
#endif
}

void shutdown() {
#if defined(_WIN32) || defined(WIN32) || defined(__unix__)
	if (graphics.is_open()) {
		graphics.loop();
	}
#endif
}

