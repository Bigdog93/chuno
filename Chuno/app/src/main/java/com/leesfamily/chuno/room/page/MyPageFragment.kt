package com.leesfamily.chuno.room.page

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.leesfamily.chuno.R
import com.leesfamily.chuno.databinding.FragmentMyPageBinding

private const val ARG_PARAM1 = "param1"
private const val ARG_PARAM2 = "param2"


class MyPageFragment : Fragment() {
    private lateinit var binding: FragmentMyPageBinding
    private var param1: String? = null
    private var param2: String? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        arguments?.let {
            param1 = it.getString(ARG_PARAM1)
            param2 = it.getString(ARG_PARAM2)
        }
    }

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        binding = FragmentMyPageBinding.inflate(inflater, container, false)
        binding.toolbarInclude.toolbarTitle.text = getString(R.string.my_page_title)
        return binding.root
    }

    companion object {

        @JvmStatic
        fun newInstance(param1: String, param2: String) =
            MyPageFragment().apply {
                arguments = Bundle().apply {
                    putString(ARG_PARAM1, param1)
                    putString(ARG_PARAM2, param2)
                }
            }
    }
}