import React from "react";
import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/css";
import "swiper/css/navigation";
import { Navigation } from "swiper/modules";

import MovieHover from "./MovieHover";
import { Tabs } from "antd";
import { useSelector } from "react-redux";

export default function MovieMultiRowSlick() {
    const { arrMovie } = useSelector((state) => state.MovieReducer);
    const arrMovieReverse = arrMovie.slice().reverse();

    return (
        <div>
            <Tabs defaultActiveKey="1">
                <Tabs.TabPane tab="ĐANG CHIẾU" key="1">
                    <Swiper
                        modules={[Navigation]}
                        navigation
                        slidesPerView={4}
                        spaceBetween={25}
                        centeredSlides
                        loop
                    >
                        {arrMovieReverse
                            .filter((x) => x.dangChieu === 1)
                            .map((item, index) => (
                                <SwiperSlide key={index}>
                                    <MovieHover phim={item} />
                                </SwiperSlide>
                            ))}
                    </Swiper>
                </Tabs.TabPane>

                <Tabs.TabPane tab="SẮP CHIẾU" key="2">
                    <Swiper
                        modules={[Navigation]}
                        navigation
                        slidesPerView={4}
                        spaceBetween={25}
                        centeredSlides
                        loop
                    >
                        {arrMovieReverse
                            .filter((x) => x.sapChieu === 1)
                            .map((item, index) => (
                                <SwiperSlide key={index}>
                                    <MovieHover phim={item} />
                                </SwiperSlide>
                            ))}
                    </Swiper>
                </Tabs.TabPane>
            </Tabs>
        </div>
    );
}
