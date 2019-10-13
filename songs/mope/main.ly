\version "2.18.2"

\header{
    title = \markup{ \caps {The Sea and the Cliff} } 
    composer = "music by Mikhail Vasilyevich Antsev (1865 – 1945)"
    poet = \markup {
      \column {
        \line {
          "words by Fyodor Ivanovich Tyutchev (1803 – 1873)"
        }
        \line {
            phonetization by Yuly Vladimirovich Kopkin  (1980 – )
        }
      }
   }
    % arranger = "typeset by Neil Jackson"
    % arranger="version = 2019/09/25"
    %% breakbefore = ##t
}



preface = \markuplist {
            % this is a hack to acheive a forced page-break: we create a vbox of enormous height, 
            % which essentially guarantees to occupy one whole page.
            %% \box % uncomment this line for diagnostics, to display an outline around our enormous vbox.
            \combine 
                \general-align #Y #UP \vspace #100   
                % the "general-align" is necessary to put our content at the top of the vbox.
                
                \column {
                    \vspace #5
                    \fill-line {
                        \null 
                        \box \pad-around #3 \larger \center-column {
                            \line{ \larger \larger \larger { \italic "The Sea and the Cliff"  } }
                            \line{ by Fyodor Tyutchev  }
                            \line{ translated by Frank Jude }
                            \column { 
                                \line{ #" " }
                                \line{ Raging, seething,                         }
                                \line{ lashing, whistling, roaring,              }
                                \line{ leaping for the skies,                    }
                                \line{ the unassailable skies…                }
                                \line{ Is it hell, some hellish force            }
                                \line{ beneath the boiling cauldron              }
                                \line{ churning up the deeps,                    }
                                \line{ some hellish fire                         }
                                \line{ turning the sea-world upside down?        }
                                \line{ #" " }
                                \line{ Frenzied wave-onslaught…              }
                                \line{ Nothing stops it, nothing can…         }
                                \line{ Roars, whistles, screams, howls…       }
                                \line{ Smashing cliffs along the coast…       }
                                \line{ Peaceful, haughty,                        }
                                \line{ unmoved by the clowning sea,              }
                                \line{ motionless, changeless,                   }
                                \line{ born at creation, you stand, our titan!   }
                                \line{ #" " }
                                \line{ Battle-maddened,                          }
                                \line{ leaping into fateful struggle             }
                                \line{ waves come howling back                   }
                                \line{ to beat against your granite face…      }
                                \line{ The changeless stone                      }
                                \line{ dashes aside the noisy onslaught.         }
                                \line{ Scattered waters fall apart.              }
                                \line{ #" " }
                                \line{ Impotent gusts fall grumbling away.       }
                                \line{ Stand, mighty cliff!                      }
                                \line{ Just wait awhile.                         }
                                \line{ The thundering waves will tire            }
                                \line{ of warring with your foot.                }
                                \line{ Exhausted by its spiteful game            }
                                \line{ the sea will be subdued.                  }
                                \line{ Forget this howling affray.               }
                                \line{ Beneath the foot of the titan,            }
                                \line{ the waves will slink away.                }
                            }
                        }
                        \null
                    }
                }
        }

\paper{
    scoreTitleMarkup = #bookTitleMarkup 
    bookTitleMarkup = \markup{ }
    print-all-headers = ##t
}

%useful for debugging the header: suppresses typesetting of the score, which greatly reduces compile time.
%% \layout { \context{ \Score skipTypesetting = ##t } }

\include "bookTemplate.liy"

